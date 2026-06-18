# Examples / 示例库

Collection of examples using IM2ODE with MatterSim ML force field.

IM2ODE + MatterSim 机器学习力场的示例集合。

---

## Available Examples / 可用示例

### 1. TiO2_12atoms / 体相 TiO2 结构搜索
**Global structure search for TiO2 polymorphs**
- Calculator: MatterSim ML force field
- Composition: 4 Ti + 8 O = 12 atoms
- Target: Bulk TiO2 phases (rutile, anatase, etc.)

**TiO2 多形体全局结构搜索**
- 计算器：MatterSim 机器学习力场
- 组成：4 Ti + 8 O = 12 原子
- 目标：体相 TiO2 相（金红石、锐钛矿等）

---

### 2. Au20_cluster / Au20 纳米团簇
**Global optimization of 20-atom gold nanocluster**
- Calculator: MatterSim ML force field
- Composition: 20 Au atoms
- Target: Tetrahedral pyramid structure (global minimum)

**20 原子金纳米团簇的全局优化**
- 计算器：MatterSim 机器学习力场
- 组成：20 个 Au 原子
- 目标：四面体金字塔结构（全局最小）

---

### 3. FeSe_2D / FeSe 单层二维材料
**2D FeSe monolayer structure search**
- Calculator: MatterSim ML force field
- Composition: 4 Fe + 4 Se = 8 atoms
- Target: FeSe monolayer phases

**FeSe 单层二维材料结构搜索**
- 计算器：MatterSim 机器学习力场
- 组成：4 Fe + 4 Se = 8 原子
- 目标：FeSe 单层相

---

### 4. H2_adsorption_CuZn / CuZn 表面氢吸附
**H adsorption on CuZn brass surface (surface catalysis)**
- Calculator: MatterSim ML force field
- Composition: 36 Cu + 3 Zn + 1 H = 40 atoms
- Target: Stable adsorption sites on alloy surface
- Features: Fixed substrate, only H adsorbate moves

**CuZn 黄铜表面的氢吸附（表面催化）**
- 计算器：MatterSim 机器学习力场
- 组成：36 Cu + 3 Zn + 1 H = 40 原子
- 目标：合金表面稳定吸附位点
- 特点：固定基底，仅 H 吸附质移动

---

### 5. Ag4_cluster_surface / Ag4 团簇表面相互作用
**Ag4 nanocluster on C-N surface (cluster-surface interaction)**
- Calculator: MatterSim ML force field
- Composition: 70 C + 1 N + 4 Ag = 75 atoms
- Target: Stable adsorption configurations of metal cluster
- Features: Fixed substrate atoms, movable Ag4 cluster
- Lattice: Hexagonal (14.8 x 14.8 x 20 Angstrom)

**C-N 表面的 Ag4 纳米团簇（团簇-表面相互作用）**
- 计算器：MatterSim 机器学习力场
- 组成：70 C + 1 N + 4 Ag = 75 原子
- 目标：金属团簇的稳定吸附构型
- 特点：固定基底原子，Ag4 团簇可移动
- 晶格：六方 (14.8 x 14.8 x 20 埃)

---

## Common Setup / 通用设置

All examples use:
- Differential Evolution (DE) algorithm
- MatterSim GNN force field
- Structure output in VASP POSCAR format

所有示例均使用：
- 差分进化 (DE) 算法
- MatterSim GNN 力场
- VASP POSCAR 格式输出结构

## Usage / 使用方法

Go to example directory and run:

进入示例目录并运行：
```
cp ../../de.x .
./de.x
```
