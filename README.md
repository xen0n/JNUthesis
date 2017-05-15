# JNU-Thesis

**注意：本模板虽基本完工，仍可能存在样式问题。请提出您发现的排版问题，欢迎 PR！**

本项目提供了一个用于排版江南大学学位论文的XeLaTeX模板。本项目乃[南京大学学位论文模板 NJU-Thesis][njuthesis] 的移植。

[njuthesis]: https://github.com/Haixing-Hu/nju-thesis

目前该模板支持排版学士和硕士（学术型与专业型）的学位论文。

虽然该模板主要用于排版江南大学的学位论文，但亦可经过简单的设置或修改用于排版国内其他大学的学位论文。

## 功能特色

* 支持多种江南大学学位论文及相关材料的生成：
	- 学术型硕士：
		- 学位论文：`master` 选项
		- 盲审版论文：`master,blindreview` 选项
	- 专业型硕士：
		- 学位论文：`master,prodegree` 选项
		- 盲审版论文：`master,prodegree,blindreview` 选项
	- 学士：
		- 学位论文：`bachelor` 选项
		- 毕业设计：`bachelordesign` 选项，除“摘要”变为“设计总说明”之外与 `bachelor` 完全相同
		- 相关资料，外文资料翻译：详见 [`bachelor-related.tex`](./bachelor-related.tex)
* 使用XeLaTeX作为排版引擎，论文源码需要使用UTF-8编码；
* 自动生成中文封面、中文摘要页、英文摘要页、独创性声明页等必需页面；
* 支持自动替换所有中文句号为英文句点，方便理工科论文排版：`replaceperiod` 选项。


## 支持环境

以下环境测试支持：

* Linux，TeXLive 2016，Windows 字体与 Adobe 字体
* macOS，MacTeX，Windows 字体与 Adobe 字体

以下环境存在已知问题：

* Windows/Linux，TeXLive 2016，Windows 字体：PDF 内文字复制粘贴乱码
* macOS，MacTeX BasicTeX：校名 logo 缺失。请使用完整 MacTeX 安装


## TODO

* 更多论文封面
	- 专业学位（在职）学位
	- 同等学力硕士学位
	- 高校教师硕士学位
