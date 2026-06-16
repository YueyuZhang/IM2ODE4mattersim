!
! File:   run_mattersim.F90
! Author: IM2ODE Team
!
! Interface to MatterSim ML force field
!

module run_mattersim
    contains

    subroutine mattersim()
        use kinds
        use parameters, only : population
        implicit none
        integer(i4b) :: i
        do i = 1, population
            call write_poscar(i)
            call system('python run_mattersim.py')
            call read_mattersim(i)
        end do
    end subroutine mattersim

    subroutine write_poscar(tag)
        use kinds
        use parameters, only : pstruct
        implicit none
        integer(i4b), intent(in) :: tag
        integer(i4b) :: i, n, atom_typ
        real(dp) :: lattice(3,3)
        
        n = pstruct(tag) % natom
        atom_typ = pstruct(tag) % ntyp
        lattice = pstruct(tag) % lat
        
        open(3111, file = "POSCAR")
        write(3111, "(A)") "IM2ODE Structure"
        write(3111, "(F12.6)") 1.0
        do i = 1, 3
            write(3111, "(3F12.6)") lattice(i, :)
        end do
        write(3111, "(100I5)") (pstruct(tag) % nelement(i), i = 1, atom_typ)
        write(3111, "(A)") "Direct"
        do i = 1, n
            write(3111, "(3F12.6)") pstruct(tag) % pos(:, i)
        end do
        close(3111)
    end subroutine write_poscar

    subroutine read_mattersim(tag)
        use kinds
        use parameters, only : pstruct
        implicit none
        integer(i4b), intent(in) :: tag
        integer(i4b) :: i, j, status
        real(dp) :: energy
        logical :: alive
        
        inquire(file = "energy.txt", exist = alive)
        if(alive) then
            open(4311, file="energy.txt", status = "old")
            read(4311, *, iostat=status) energy
            if(status == 0) then
                pstruct(tag) % energy = energy
            else
                pstruct(tag) % energy = 1.0d6
            end if
            close(4311)
        else
            pstruct(tag) % energy = 1.0d6
        end if
        
        ! Read optimized structure from CONTCAR if available
        inquire(file = "CONTCAR", exist = alive)
        if(alive) then
            call read_contcar(tag)
        end if
        
    end subroutine read_mattersim

    subroutine read_contcar(tag)
        use kinds
        use parameters, only : pstruct
        use constants, only: max_atom, max_type
        implicit none
        integer(i4b), intent(in) :: tag
        integer(i4b) :: i, j, status, natom
        real(dp) :: lat_matrix(3,3), pos(3, max_atom*max_type), tmp
        
        open(4312, file="CONTCAR", status = "old")
        read(4312, *, iostat=status)
        read(4312, *, iostat=status) tmp
        do i = 1, 3
            read(4312, *, iostat=status) (lat_matrix(i,j), j = 1, 3)
        end do
        lat_matrix(:,:) = tmp * lat_matrix(:,:)
        read(4312, *, iostat=status)
        
        natom = pstruct(tag) % natom
        do i = 1, natom
            read(4312, *, iostat=status) (pos(j,i), j = 1, 3)
        end do
        close(4312)
        
        pstruct(tag) % lat = lat_matrix
        pstruct(tag) % pos = pos
        
    end subroutine read_contcar

    subroutine print_mattersim_res()
        use kinds
        use parameters, only : pool, population
        implicit none
        integer(i4b) :: i, j, k
        character(len=20) :: fname
        
        call system('mkdir results')
        do i = 1, population
            write(*, *) i, "  energy = ", pool(i) % energy
            write(fname, "(A7, I3.3)") "results/POSCAR_", i
            open(3113, file = fname)
            write(3113, "(A)") "IM2ODE Result"
            write(3113, "(F12.6)") 1.0
            do j = 1, 3
                write(3113, "(3F12.6)") pool(i) % lat(j,:)
            end do
            do j = 1, pool(i) % ntyp
                write(3113, *) pool(i) % nelement(j)
            end do
            write(3113, "(A)") "Direct"
            do j = 1, pool(i) % natom
                write(3113, "(3F12.6)") pool(i) % pos(:, j)
            end do
            close(3113)
        end do
    end subroutine print_mattersim_res

end module run_mattersim
