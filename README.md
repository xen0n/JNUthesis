# JNU-Thesis

**注意：本模板仍在开发中，存在已知的样式问题。请提出您发现的排版问题，欢迎 PR！**

本项目提供了一个用于排版江南大学学位论文的XeLaTeX模板。本项目乃[南京大学学位论文模板 NJU-Thesis][njuthesis] 的移植。

[njuthesis]: https://github.com/Haixing-Hu/nju-thesis

目前该模板支持排版硕士和学术型学士的学位论文。

虽然该模板主要用于排版江南大学的学位论文，但亦可经过简单的设置或修改用于排版国内其他大学的学位论文。

## 功能特色

* 支持学术型硕士、学士学位论文；
* 使用XeLaTeX作为排版引擎，论文源码需要使用UTF-8编码；
* 自动生成中文封面、中文摘要页、英文摘要页、独创性声明页等必需页面。

## 支持环境

以下环境测试支持：

* Linux，TeXLive 2016，Windows 字体与 Adobe 字体
* macOS，MacTeX，Windows 字体与 Adobe 字体

以下环境存在已知问题：

* Gentoo Linux，TeXLive 2016，freetype/fontconfig with Infinality，Windows 字体：（可能为个例）PDF 内文字无法正常选择
* macOS，MacTeX BasicTeX：校名 logo 缺失。请使用完整 MacTeX 安装
