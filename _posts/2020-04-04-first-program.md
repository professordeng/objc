---
title: 第一个程序
---

任何能在计算机上执行的项目都成为程序（program），有图形化用户界面的程序也成为应用。

有些程序没有图形化界面，但是可以长时间在后台运行的程序称为守护进程（daemon），例如负责复制功能的 `pboard` 进程。

只能在终端（terminal）上运行的程序称为命令行工具。下面用 Xcode 创建命令行工具为例。

## 1. 创建项目

1. 打开 Xcode→File 菜单栏中选 New→项目（project）
2. 左侧的 OS X 栏选择 Application 应用，然后选 Command Line Tool（命令行工具）→点击 Next
3. 新项目名字为 AGoodStart→机构名称（organization name）以及公司标识符（company identifier）分别填 Big Nerd Ranch 以及 com.bignerdanch→Type 弹出框中选择 C→点击 Next
4. 选择存放目录→取消勾选 Create git repository→点击 Create

## 2. 编写代码

创建目录后，从左到右分别是导航区（navigator area）以及编辑区（editor area）。

运行快捷键为 command+R

## 3. 引入库

点击左侧栏项目→选择新界面右上侧 build phases→点 Link Binary With Libraries→点 `+`→输入函数名字→添加对应的库

例如 `readline()` 库直接 `+` 后搜 `libreadline`，`readline()` 输入的字母会重复显示。