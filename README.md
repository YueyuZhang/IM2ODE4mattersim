# IM2ODE4mattersim

**Inverse Design of Materials by Multi-objective Optimization with MatterSim ML Force Field**

---

## Overview

This is a modified version of IM2ODE that integrates MatterSim, a graph neural network
force field for fast and accurate materials simulations. It enables global structure
optimization of crystals, clusters, 2D materials, and surface adsorption systems using
machine learning potentials.

## Features

- Differential Evolution (DE) algorithm for global optimization
- MatterSim GNN force field integration
- Support for bulk, cluster, 2D, and surface systems
- Selective dynamics support
- POSCAR format input/output

## Requirements

- GNU make
- Fortran compiler (gfortran recommended)
- Python 3.8+
- MatterSim (ML force field)
- ASE (Atomic Simulation Environment)

## Installation

### 1. Install MatterSim

conda activate simulation
pip install mattersim

### 2. Compile IM2ODE4mattersim

git clone https://github.com/YueyuZhang/IM2ODE4mattersim.git
cd IM2ODE4mattersim
make

## Quick Start

conda activate simulation
cd examples/TiO2_12atoms
cp ../../de.x .
./de.x

## Examples (5 total)

| Example | System | Atoms | Type |
|---------|--------|-------|------|
| TiO2_12atoms | Bulk TiO2 | 12 | 3D periodic |
| Au20_cluster | Gold nanocluster | 20 | 0D cluster |
| FeSe_2D | FeSe monolayer | 8 | 2D material |
| H2_adsorption_CuZn | H on CuZn surface | 40 | Surface catalysis |
| Ag4_cluster_surface | Ag4 on C-N surface | 75 | Cluster-surface |

## Files Modified/Added

### Core MatterSim Integration:
- run_mattersim.F90 - Fortran interface module
- run_mattersim.py - Python calculator wrapper

### Build System:
- Makefile - Updated compilation

## Citation

Original IM2ODE paper:
- Zhang YY, Gao WG, Chen SY, Xiang HJ, Gong XG.
  "Inverse design of materials by multi-objective differential evolution"
  Comput. Mater. Sci. 98, 51-55 (2015)

## Original IM2ODE Website
- Official Website: https://yueyuzhang.github.io/im2ode.github.io/

## License

LGPL

---

---

# IM2ODE4mattersim (中文说明)

**基于 MatterSim 机器学习力场的材料逆向设计软件**

---

## 概述

这是 IM2ODE 的改进版本，集成了 MatterSim 图神经网络力场，用于快速准确的材料模拟。
支持体相晶体、纳米团簇、二维材料和表面吸附体系的全局结构优化。

## 功能特点

- 差分进化 (DE) 算法进行全局优化
- MatterSim GNN 力场集成
- 支持体相、团簇、二维材料、表面体系
- 选择性动力学支持
- POSCAR 格式输入/输出

## 环境要求

- GNU make
- Fortran 编译器（推荐 gfortran）
- Python 3.8+
- MatterSim（机器学习力场）
- ASE（原子模拟环境）

## 安装步骤

### 1. 安装 MatterSim

conda activate simulation
pip install mattersim

### 2. 编译 IM2ODE4mattersim

git clone https://github.com/YueyuZhang/IM2ODE4mattersim.git
cd IM2ODE4mattersim
make

## 快速开始

conda activate simulation
cd examples/TiO2_12atoms
cp ../../de.x .
./de.x

## 示例库（共 5 个）

| 示例名称 | 系统 | 原子数 | 类型 |
|---------|------|-------|------|
| TiO2_12atoms | 体相 TiO2 | 12 | 3D 周期性 |
| Au20_cluster | 金纳米团簇 | 20 | 0D 团簇 |
| FeSe_2D | FeSe 单层 | 8 | 二维材料 |
| H2_adsorption_CuZn | H/CuZn 表面吸附 | 40 | 表面催化 |
| Ag4_cluster_surface | Ag4 团簇/C-N 表面 | 75 | 团簇-表面相互作用 |

## 修改/新增的文件

### 核心 MatterSim 集成：
- run_mattersim.F90 - Fortran 接口模块
- run_mattersim.py - Python 计算器包装

### 编译系统：
- Makefile - 更新的编译配置

## 引用

原始 IM2ODE 论文：
- Zhang YY, Gao WG, Chen SY, Xiang HJ, Gong XG.
  "Inverse design of materials by multi-objective differential evolution"
  Comput. Mater. Sci. 98, 51-55 (2015)

## 原始 IM2ODE 网站
- 官方网站：https://yueyuzhang.github.io/im2ode.github.io/

## 许可证

LGPL
