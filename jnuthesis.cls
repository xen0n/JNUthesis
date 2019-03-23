%%
%% This is file `jnuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% jnuthesis.dtx  (with options: `cls')
%% This is a generated file.
%% 
%% Copyright (C) 2013-2016, Haixing Hu.
%% Department of Computer Science and Technology, Nanjing University.
%% 
%% Home Page of the Project: http://haixing-hu.github.io/nju-thesis/
%% 
%% It may be distributed and/or modified under the conditions of the LaTeX Project
%% Public License, either version 1.2 of this license or (at your option) any
%% later version.  The latest version of this license is in
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{jnuthesis}
 [2017/02/28 v2.0 Document Class for the Degree Papers of Jiangnan University]
%% {\jnuthesis}所遵循的江南大学研究生院的要求如下：
%% \begin{itemize}
%% \item \textsl{江南大学硕士答辩流程及相关材料下载}，\\
%% \url{http://gs.nju.edu.cn/content/xw/ss3.htm}
%% \item \textsl{江南大学博士答辩流程及相关材料下载}，\\
%% \url{http://gs.nju.edu.cn/content/xw/bs3.htm}
%% \item \textsl{江南大学博士(硕士)学位论文编写格式规定(试行)}\\
%% \url{http://grawww.nju.edu.cn/content/xw/lwgf.doc}
%% \end{itemize}
\newif\ifjnut@adobefonts\jnut@adobefontstrue
\newif\ifjnut@sourcefonts\jnut@sourcefontsfalse
\newif\ifjnut@winfonts\jnut@winfontsfalse
\newif\ifjnut@linuxfonts\jnut@linuxfontsfalse
\newif\ifjnut@macfonts\jnut@macfontsfalse
\newif\ifjnut@backinfo\jnut@backinfotrue
\newif\ifjnut@phd\jnut@phdfalse
\newif\ifjnut@master\jnut@masterfalse
\newif\ifjnut@bachelor\jnut@bachelorfalse
\newif\ifjnut@bachelorcoursework\jnut@bachelorcourseworkfalse
\newif\ifjnut@bachelordesign\jnut@bachelordesignfalse
\newif\ifjnut@prodegree\jnut@prodegreefalse
\newif\ifjnut@replaceperiod\jnut@replaceperiodfalse
\newif\ifjnut@blindreview\jnut@blindreviewfalse
\DeclareOption{adobefonts}{\jnut@adobefontstrue
  \jnut@sourcefontsfalse
  \jnut@winfontsfalse
  \jnut@linuxfontsfalse
  \jnut@macfontsfalse}
\DeclareOption{sourcefonts}{\jnut@sourcefontstrue
  \jnut@adobefontsfalse
  \jnut@winfontsfalse
  \jnut@linuxfontsfalse
  \jnut@macfontsfalse}
\DeclareOption{winfonts}{\jnut@winfontstrue
  \jnut@adobefontsfalse
  \jnut@sourcefontsfalse
  \jnut@linuxfontsfalse
  \jnut@macfontsfalse}
\DeclareOption{linuxfonts}{\jnut@linuxfontstrue
  \jnut@adobefontsfalse
  \jnut@sourcefontsfalse
  \jnut@winfontsfalse
  \jnut@macfontsfalse}
\DeclareOption{macfonts}{\jnut@macfontstrue
  \jnut@adobefontsfalse
  \jnut@sourcefontsfalse
  \jnut@winfontsfalse
  \jnut@linuxfontsfalse}
\DeclareOption{nobackinfo}{\jnut@backinfofalse}
\DeclareOption{phd}{\jnut@phdtrue
  \jnut@masterfalse
  \jnut@bachelorfalse}
\DeclareOption{master}{\jnut@mastertrue
  \jnut@phdfalse
  \jnut@bachelorfalse}
\DeclareOption{bachelor}{\jnut@bachelortrue
  \jnut@bachelorcourseworkfalse
  \jnut@bachelordesignfalse
  \jnut@phdfalse
  \jnut@masterfalse}
\DeclareOption{bachelorcoursework}{\jnut@bachelortrue
  \jnut@bachelorcourseworktrue
  \jnut@bachelordesignfalse
  \jnut@phdfalse
  \jnut@masterfalse}
\DeclareOption{bachelordesign}{\jnut@bachelortrue
  \jnut@bachelorcourseworkfalse
  \jnut@bachelordesigntrue
  \jnut@phdfalse
  \jnut@masterfalse}
\DeclareOption{prodegree}{\jnut@prodegreetrue}
\DeclareOption{replaceperiod}{\jnut@replaceperiodtrue}
\DeclareOption{blindreview}{\jnut@blindreviewtrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[12pt,a4paper,doubleside]{book}
\RequirePackage{ifxetex}
\RequireXeTeX
\RequirePackage{comment}
\RequirePackage[nomessages]{fp}
\RequirePackage{tikz}
\RequirePackage{lastpage}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
\RequirePackage{eso-pic}
\RequirePackage{caption}
\RequirePackage{float}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{enumitem}
\RequirePackage{xcolor}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{bm}
\RequirePackage{mathrsfs}
\RequirePackage{wasysym}
\RequirePackage{pifont}
\RequirePackage{txfonts}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{shortvrb}
\RequirePackage{xltxtra}
\ifjnut@sourcefonts
\RequirePackage[CJKnumber,CJKchecksingle]{xeCJK}
\else
\RequirePackage[CJKnumber,CJKchecksingle,AutoFakeBold=true]{xeCJK}
\fi
\RequirePackage{CJKnumb}
\defaultfontfeatures{Mapping=tex-text}
\punctstyle{fullwidth}
\RequirePackage{xeCJKfntef}
\xeCJKsetup{ underline/format = \color{black} }
\RequirePackage[hyphens]{url}
\RequirePackage{hyperref}
\hypersetup{%
    unicode=false,
    hyperfootnotes=true,
    hyperindex=true,
    pageanchor=true,
    CJKbookmarks=true,
    bookmarksnumbered=true,
    bookmarksopen=true,
    bookmarksopenlevel=0,
    breaklinks=true,
    colorlinks=false,
    plainpages=false,
    pdfpagelabels,
    pdfborder=0 0 0%
}
\urlstyle{same}
\RequirePackage[sort&compress,numbers]{natbib}
\RequirePackage{hypernat}
\RequirePackage{tabularx}
\RequirePackage{makeidx}
\RequirePackage{glossaries}
\RequirePackage{ifthen}
\RequirePackage[perpage,symbol*]{footmisc}
\RequirePackage{etoolbox}
\RequirePackage{xstring}
\RequirePackage{xifthen}
\RequirePackage{xparse}
\input{jnuthesis.cfg}
\newbool{bachelor@zhabstract}
\newbool{bachelor@enabstract}
\newbool{jnut@toc}
\newbool{jnut@main}
\newbool{jnut@appendix}
\newcommand*{\jnut@state@reset}{%
  \boolfalse{bachelor@zhabstract}%
  \boolfalse{bachelor@enabstract}%
  \boolfalse{jnut@toc}%
  \boolfalse{jnut@main}%
  \boolfalse{jnut@appendix}%
}
\newcommand*{\jnut@state@zhabstract}{%
  \jnut@state@reset%
  \ifjnut@bachelor%
    \booltrue{bachelor@zhabstract}%
  \fi%
}
\newcommand*{\jnut@state@enabstract}{%
  \jnut@state@reset%
  \ifjnut@bachelor%
    \booltrue{bachelor@enabstract}%
  \fi%
}
\newcommand*{\jnut@state@toc}{%
  \jnut@state@reset%
  \booltrue{jnut@toc}%
}
\newcommand*{\jnut@state@main}{%
  \jnut@state@reset%
  \booltrue{jnut@main}%
}
\newcommand*{\jnut@state@appendix}{%
  \jnut@state@reset%
  \booltrue{jnut@appendix}%
}
\ifjnut@replaceperiod
%% http://tex.stackexchange.com/a/40832
\catcode`\。=13
\def。{．}
\fi
\raggedbottom
\ifjnut@adobefonts
  \newcommand*{\jnut@zhfn@songti}{\jnut@zhfn@songti@adobe}
  \newcommand*{\jnut@zhfn@heiti}{\jnut@zhfn@heiti@adobe}
  \newcommand*{\jnut@zhfn@kaishu}{\jnut@zhfn@kaishu@adobe}
  \newcommand*{\jnut@zhfn@fangsong}{\jnut@zhfn@fangsong@adobe}
  \newcommand*{\jnut@enfn@main}{\jnut@enfn@main@adobe}
  \newcommand*{\jnut@enfn@sans}{\jnut@enfn@sans@adobe}
  \newcommand*{\jnut@enfn@mono}{\jnut@enfn@mono@adobe}
\else
  \ifjnut@winfonts
      \newcommand*{\jnut@zhfn@songti}{\jnut@zhfn@songti@win}
      \newcommand*{\jnut@zhfn@heiti}{\jnut@zhfn@heiti@win}
      \newcommand*{\jnut@zhfn@kaishu}{\jnut@zhfn@kaishu@win}
      \newcommand*{\jnut@zhfn@fangsong}{\jnut@zhfn@fangsong@win}
      \newcommand*{\jnut@enfn@main}{\jnut@enfn@main@win}
      \newcommand*{\jnut@enfn@sans}{\jnut@enfn@sans@win}
      \newcommand*{\jnut@enfn@mono}{\jnut@enfn@mono@win}
  \else
    \ifjnut@linuxfonts
      \newcommand*{\jnut@zhfn@songti}{\jnut@zhfn@songti@linux}
      \newcommand*{\jnut@zhfn@heiti}{\jnut@zhfn@heiti@linux}
      \newcommand*{\jnut@zhfn@kaishu}{\jnut@zhfn@kaishu@linux}
      \newcommand*{\jnut@zhfn@fangsong}{\jnut@zhfn@fangsong@linux}
      \newcommand*{\jnut@enfn@main}{\jnut@enfn@main@linux}
      \newcommand*{\jnut@enfn@sans}{\jnut@enfn@sans@linux}
      \newcommand*{\jnut@enfn@mono}{\jnut@enfn@mono@linux}
    \else
       \ifjnut@macfonts
          \newcommand*{\jnut@zhfn@songti}{\jnut@zhfn@songti@mac}
          \newcommand*{\jnut@zhfn@heiti}{\jnut@zhfn@heiti@mac}
          \newcommand*{\jnut@zhfn@kaishu}{\jnut@zhfn@kaishu@mac}
          \newcommand*{\jnut@zhfn@fangsong}{\jnut@zhfn@fangsong@mac}
          \newcommand*{\jnut@enfn@main}{\jnut@enfn@main@mac}
          \newcommand*{\jnut@enfn@sans}{\jnut@enfn@sans@mac}
          \newcommand*{\jnut@enfn@mono}{\jnut@enfn@mono@mac}
       \else
        \ifjnut@sourcefonts
          \newcommand*{\jnut@zhfn@songti}{\jnut@zhfn@songti@source}
          \newcommand*{\jnut@zhfn@heiti}{\jnut@zhfn@heiti@source}
          \newcommand*{\jnut@zhfn@kaishu}{\jnut@zhfn@kaishu@source}
          \newcommand*{\jnut@zhfn@fangsong}{\jnut@zhfn@fangsong@source}
          \newcommand*{\jnut@enfn@main}{\jnut@enfn@main@source}
          \newcommand*{\jnut@enfn@sans}{\jnut@enfn@sans@source}
          \newcommand*{\jnut@enfn@mono}{\jnut@enfn@mono@source}
        \else
          \ClassError{jnuthesis}{No fonts was selected.}{}
        \fi
       \fi
    \fi
  \fi
\fi
\setCJKfamilyfont{song}[Language=Chinese Simplified]{\jnut@zhfn@songti}
\setCJKfamilyfont{hei}[Language=Chinese Simplified]{\jnut@zhfn@heiti}
\setCJKfamilyfont{kai}[Language=Chinese Simplified, AutoFakeBold=1.5]{\jnut@zhfn@kaishu}
\setCJKfamilyfont{fangsong}[Language=Chinese Simplified, AutoFakeBold=1.5]{\jnut@zhfn@fangsong}
\setCJKmainfont[ItalicFont={\jnut@zhfn@kaishu}, Language=Chinese Simplified]%
               {\jnut@zhfn@songti}
\setCJKsansfont[Language=Chinese Simplified]{\jnut@zhfn@heiti}
\setCJKmonofont[Language=Chinese Simplified]{\jnut@zhfn@songti}  %% fangsong 理工科不让用
\setmainfont{\jnut@enfn@main}
\setsansfont{\jnut@enfn@sans}
\setmonofont{\jnut@enfn@main}  %% mono 理工科不让用
\newfontfamily{\forcedtt}{\jnut@enfn@mono}
\DeclareTextFontCommand{\textforcedtt}{\forcedtt}
\newcommand*{\songti}{\CJKfamily{song}}
\newcommand*{\heiti}{\CJKfamily{hei}}
\newcommand*{\kaishu}{\CJKfamily{kai}}
\newcommand*{\fangsong}{\CJKfamily{fangsong}}
\newcommand*{\jnut@fs@eight}{5.02} % 八号字 5bp
\newcommand*{\jnut@fs@eightskip}{6.02}
\newcommand*{\jnut@fs@seven}{5.52} % 七号字 5.5bp
\newcommand*{\jnut@fs@sevenskip}{6.62}
\newcommand*{\jnut@fs@ssix}{6.52} % 小六号 6.5bp
\newcommand*{\jnut@fs@ssixskip}{7.83}
\newcommand*{\jnut@fs@six}{7.53} % 六号字 7.5bp
\newcommand*{\jnut@fs@sixskip}{9.03}
\newcommand*{\jnut@fs@sfive}{9.03} % 小五号 9bp
\newcommand*{\jnut@fs@sfiveskip}{10.84}
\newcommand*{\jnut@fs@five}{10.54} % 五号 10bp
\newcommand*{\jnut@fs@fiveskip}{12.65}
\newcommand*{\jnut@fs@sfour}{12.05} % 小四号 12bp
\newcommand*{\jnut@fs@sfourskip}{14.45}
\newcommand*{\jnut@fs@four}{14.05} % 四号字 14bp
\newcommand*{\jnut@fs@fourskip}{16.86}
\newcommand*{\jnut@fs@sthree}{15.06} % 小三号 15bp
\newcommand*{\jnut@fs@sthreeskip}{18.07}
\newcommand*{\jnut@fs@three}{16.06} % 三号字 16bp
\newcommand*{\jnut@fs@threeskip}{19.27}
\newcommand*{\jnut@fs@stwo}{18.07} % 小二号 18bp
\newcommand*{\jnut@fs@stwoskip}{21.68}
\newcommand*{\jnut@fs@two}{22.08} % 二号字 22bp
\newcommand*{\jnut@fs@twoskip}{26.50}
\newcommand*{\jnut@fs@sone}{24.09} % 小一号 24bp
\newcommand*{\jnut@fs@soneskip}{28.91}
\newcommand*{\jnut@fs@one}{26.10} % 一号字 26bp
\newcommand*{\jnut@fs@oneskip}{31.32}
\newcommand*{\jnut@fs@szero}{36.14} % 小初号 36bp
\newcommand*{\jnut@fs@szeroskip}{43.36}
\newcommand*{\jnut@fs@zero}{42.16} % 初号字 42bp
\newcommand*{\jnut@fs@zeroskip}{50.59}
\DeclareMathSizes{\jnut@fs@eight}
                 {\jnut@fs@eight}
                 {5}
                 {5}
\DeclareMathSizes{\jnut@fs@seven}
                 {\jnut@fs@seven}
                 {5}
                 {5}
\DeclareMathSizes{\jnut@fs@ssix}
                 {\jnut@fs@ssix}
                 {5}
                 {5}
\DeclareMathSizes{\jnut@fs@six}
                 {\jnut@fs@six}
                 {5}
                 {5}
\DeclareMathSizes{\jnut@fs@sfive}
                 {\jnut@fs@sfive}
                 {6}
                 {5}
\DeclareMathSizes{\jnut@fs@five}
                 {\jnut@fs@five}
                 {7}
                 {5}
\DeclareMathSizes{\jnut@fs@sfour}
                 {\jnut@fs@sfour}
                 {8}
                 {6}
\DeclareMathSizes{\jnut@fs@four}
                 {\jnut@fs@four}
                 {\jnut@fs@five}
                 {\jnut@fs@six}
\DeclareMathSizes{\jnut@fs@sthree}
                 {\jnut@fs@sthree}
                 {\jnut@fs@sfour}
                 {\jnut@fs@sfive}
\DeclareMathSizes{\jnut@fs@three}
                 {\jnut@fs@three}
                 {\jnut@fs@four}
                 {\jnut@fs@five}
\DeclareMathSizes{\jnut@fs@stwo}
                 {\jnut@fs@stwo}
                 {\jnut@fs@sthree}
                 {\jnut@fs@sfour}
\DeclareMathSizes{\jnut@fs@two}
                 {\jnut@fs@two}
                 {\jnut@fs@three}
                 {\jnut@fs@four}
\DeclareMathSizes{\jnut@fs@sone}
                 {\jnut@fs@sone}
                 {\jnut@fs@stwo}
                 {\jnut@fs@sthree}
\DeclareMathSizes{\jnut@fs@one}
                 {\jnut@fs@one}
                 {\jnut@fs@two}
                 {\jnut@fs@three}
\DeclareMathSizes{\jnut@fs@szero}
                 {\jnut@fs@szero}
                 {\jnut@fs@sone}
                 {\jnut@fs@stwo}
\DeclareMathSizes{\jnut@fs@zero}
                 {\jnut@fs@zero}
                 {\jnut@fs@one}
                 {\jnut@fs@two}
\def\jnut@zihao{}
\DeclareRobustCommand*{\zihao}[1]{%
  \def\jnut@zihao{#1}%
  \ifnum #11<0%
    \@tempcnta=-#1
    \ifcase\@tempcnta%
        \fontsize\jnut@fs@szero\jnut@fs@szeroskip%
    \or \fontsize\jnut@fs@sone\jnut@fs@soneskip%
    \or \fontsize\jnut@fs@stwo\jnut@fs@stwoskip%
    \or \fontsize\jnut@fs@sthree\jnut@fs@sthreeskip%
    \or \fontsize\jnut@fs@sfour\jnut@fs@sfourskip%
    \or \fontsize\jnut@fs@sfive\jnut@fs@sfiveskip%
    \or \fontsize\jnut@fs@ssix\jnut@fs@ssixskip%
    \else \ClassError{jnuthesis}{%
            Undefined Chinese font size in command \protect\zihao}{%
            The old font size is used if you continue.}%
    \fi%
  \else%
    \@tempcnta=#1
    \ifcase\@tempcnta%
        \fontsize\jnut@fs@zero\jnut@fs@zeroskip%
    \or \fontsize\jnut@fs@one\jnut@fs@oneskip%
    \or \fontsize\jnut@fs@two\jnut@fs@twoskip%
    \or \fontsize\jnut@fs@three\jnut@fs@threeskip%
    \or \fontsize\jnut@fs@four\jnut@fs@fourskip%
    \or \fontsize\jnut@fs@five\jnut@fs@fiveskip%
    \or \fontsize\jnut@fs@six\jnut@fs@sixskip%
    \or \fontsize\jnut@fs@seven\jnut@fs@sevenskip%
    \or \fontsize\jnut@fs@eight\jnut@fs@eightskip%
    \else \ClassError{jnuthesis}{%
            Undefined Chinese font size in command \protect\zihao}{%
            The old font size is used if you continue.}%
    \fi%
  \fi%
  \selectfont\ignorespaces}
\renewcommand{\tiny}{% 小六号 6.5bp
  \@setfontsize\tiny{\jnut@fs@ssix}{\jnut@fs@ssixskip}}
\renewcommand{\scriptsize}{% 六号字 7.5bp
  \@setfontsize\scriptsize{\jnut@fs@six}{\jnut@fs@sixskip}}
\renewcommand{\footnotesize}{% 小五号 9bp
  \@setfontsize\footnotesize{\jnut@fs@sfive}{\jnut@fs@sfiveskip}%
  \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
  \abovedisplayshortskip \z@ \@plus\p@
  \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
    \topsep 3\p@ \@plus\p@ \@minus\p@
    \parsep 2\p@ \@plus\p@ \@minus\p@
    \itemsep \parsep}%
  \belowdisplayskip \abovedisplayskip}
\renewcommand{\small}{% 五号 10bp
  \@setfontsize\small{\jnut@fs@five}{\jnut@fs@fiveskip}%
  \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
  \abovedisplayshortskip \z@ \@plus2\p@
  \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
  \def\@listi{\leftmargin\leftmargini
    \topsep 4\p@ \@plus2\p@ \@minus2\p@
    \parsep 2\p@ \@plus\p@ \@minus\p@
    \itemsep \parsep}%
  \belowdisplayskip \abovedisplayskip}
\renewcommand{\normalsize}{% 小四号 12bp
  \@setfontsize\normalsize{\jnut@fs@sfour}{\jnut@fs@sfourskip}%
  \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
  \abovedisplayshortskip \z@ \@plus3\p@
  \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
  \belowdisplayskip \abovedisplayskip
  \let\@listi\@listI}
\renewcommand{\large}{% 小三号 15bp
  \@setfontsize\large{\jnut@fs@sthree}{\jnut@fs@sthreeskip}}
\renewcommand{\Large}{% 小二号 18bp
  \@setfontsize\Large{\jnut@fs@stwo}{\jnut@fs@stwoskip}}
\renewcommand{\LARGE}{% 小一号 24bp
  \@setfontsize\LARGE{\jnut@fs@sone}{\jnut@fs@soneskip}}
\renewcommand{\huge}{% 一号 26bp
  \@setfontsize\huge{\jnut@fs@one}{\jnut@fs@oneskip}}
\renewcommand{\Huge}{% 小初号 36bp
  \@setfontsize\Huge{\jnut@fs@szero}{\jnut@fs@szeroskip}}
\newcommand*{\ziju}[1]{\renewcommand*{\CJKglue}{\hskip {#1}}}
\renewcommand{\textsc}[1]{{\usefont{OT1}{cmr}{m}{sc}{#1}}}
\newcommand{\dashnumber}[2]%
  {{#1}\kern.07em\rule[.5ex]{.4em}{.15ex}\kern.07em{#2}}
\renewcommand*{\thefigure}{\dashnumber{\arabic{chapter}}{\arabic{figure}}}
\renewcommand*{\thetable}{\dashnumber{\arabic{chapter}}{\arabic{table}}}
\renewcommand*{\theequation}{\dashnumber{\arabic{chapter}}{\arabic{equation}}}
\renewcommand*{\thesubfigure}{(\alph{subfigure})}
\renewcommand*{\thesubtable}{(\alph{subtable})}
\newtheoremstyle{plain}% name
                {1em}%      Space above, empty = `usual value'
                {1em}%      Space below
                {\normalfont}% Body font
                {}%         Indent amount
                {\normalfont\bfseries}% Thm head font
                {}%         Punctuation after thm head
                {1em}%      Space after thm head: \newline = linebreak
                {}%         Thm head spec
\newtheorem{definition}{\jnut@cap@definition}[chapter]
\newtheorem{notation}[definition]{\jnut@cap@notation}
\newtheorem{theorem}{\jnut@cap@theorem}[chapter]
\newtheorem{lemma}[theorem]{\jnut@cap@lemma}
\newtheorem{corollary}[theorem]{\jnut@cap@corollary}
\newtheorem{proposition}[theorem]{\jnut@cap@proposition}
\newtheorem{fact}[theorem]{\jnut@cap@fact}
\newtheorem{assumption}[theorem]{\jnut@cap@assumption}
\newtheorem{conjecture}[theorem]{\jnut@cap@conjecture}
\newtheorem{hypothesis}{\jnut@cap@hypothesis}[chapter]
\newtheorem{axiom}{\jnut@cap@axiom}[chapter]
\newtheorem{postulate}{\jnut@cap@postulate}[chapter]
\newtheorem{principle}{\jnut@cap@principle}[chapter]
\newtheorem{problem}{\jnut@cap@problem}[chapter]
\newtheorem{exercise}{\jnut@cap@exercise}[chapter]
\newtheorem{example}{\jnut@cap@example}[chapter]
\newtheorem{remark}{\jnut@cap@remark}[chapter]

\renewenvironment{proof}[1][\jnut@cap@proof]{\par
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep\textbf{#1}\@addpunct{:}]\ignorespaces
}{\popQED\endtrivlist\@endpefalse}

\newenvironment{solution}[1][\jnut@cap@solution]{\par
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep\textbf{#1}\@addpunct{:}]\ignorespaces
}{\endtrivlist\@endpefalse}

\newtheorem{algorithm}{\jnut@cap@algorithm}[chapter]
\renewcommand*{\thedefinition}{\dashnumber{\arabic{chapter}}{\arabic{definition}}}
\renewcommand*{\thetheorem}{\dashnumber{\arabic{chapter}}{\arabic{theorem}}}
\renewcommand*{\theaxiom}{\dashnumber{\arabic{chapter}}{\arabic{axiom}}}
\renewcommand*{\theproblem}{\dashnumber{\arabic{chapter}}{\arabic{problem}}}
\renewcommand*{\theexercise}{\dashnumber{\arabic{chapter}}{\arabic{exercise}}}
\renewcommand*{\theexample}{\dashnumber{\arabic{chapter}}{\arabic{example}}}
\renewcommand*{\theremark}{\dashnumber{\arabic{chapter}}{\arabic{remark}}}
\renewcommand*{\textfraction}{0.05}
\renewcommand*{\topfraction}{0.97}
\renewcommand*{\bottomfraction}{0.8}
\renewcommand*{\floatpagefraction}{0.95}
\newcommand*{\abstractname}{\jnut@cap@abstractname}
\renewcommand*{\contentsname}{\jnut@cap@contentsname}
\renewcommand*{\listfigurename}{\jnut@cap@listfigurename}
\renewcommand*{\listtablename}{\jnut@cap@listtablename}
\newcommand*{\listsymbolname}{\jnut@cap@listsymbolname}
\newcommand*{\listequationname}{\jnut@cap@listequationname}
\renewcommand*{\glossaryname}{\jnut@cap@glossaryname}
\renewcommand*{\indexname}{\jnut@cap@indexname}
\newcommand*{\equationname}{\jnut@cap@equationname}
\renewcommand*{\bibname}{\jnut@cap@bibname}
\renewcommand*{\figurename}{\jnut@cap@figurename}
\renewcommand*{\tablename}{\jnut@cap@tablename}
\renewcommand*{\chaptername}{\jnut@cap@chaptername}
\renewcommand*{\appendixname}{\jnut@cap@appendixname}
%% NOTE: 以下格式江南大学未使用。
%% \item[三级节标题] 命令为\cs{subsubsection}，格式为小三号黑体，左排列，段前空2.5ex，段后空1.5ex；
%% \item[四级节标题] 命令为\cs{paragraph}，格式为四号黑体，左排列，段前空2.0ex，段后空1ex；
%% \item[五级节标题] 命令为\cs{subparagraph}，格式为小四号黑体，左排列，段前空1.5ex，段后空1ex；
\ifjnut@bachelor
%% 学士学位
\titleformat{\chapter}[hang]
            {\centering\zihao{3}\songti\bfseries}
            {\chaptertitlename}{0.5em}{}
\titlespacing{\chapter}
             {0pt}
             {*-6}
             {*0}
\titleformat{\section}[hang]
            {\zihao{4}\songti\bfseries}
            {\thesection}{0.5em}{}
\titlespacing{\section}
             {0pt}
             {*0}
             {*0}
\titleformat{\subsection}[hang]
            {\zihao{-4}\songti\bfseries}
            {\thesubsection}{0.5em}{}
\titlespacing{\subsection}
             {0pt}
             {*0}
             {*0}
\else
%% 硕士学位
\titleformat{\chapter}[hang]
            {\centering\zihao{3}\heiti\bfseries}
            {\chaptertitlename}{1em}{}
\titlespacing{\chapter}
             {0pt}
             {*-2}  % NOTE: 使用 *1 的话顶端边距太多了
             {*1}
\titleformat{\section}[hang]
            {\zihao{4}\songti\bfseries}
            {\thesection}{0.5em}{}
\titlespacing{\section}
             {0pt}
             {*0.5}
             {*0.5}
\titleformat{\subsection}[hang]
            {\zihao{-4}\songti\bfseries}
            {\thesubsection}{0.5em}{}
\titlespacing{\subsection}
             {0pt}
             {*0.5}
             {*0.5}
%% NOTE: 以下格式江南大学未使用。
\titleformat{\subsubsection}[hang]
            {\zihao{-3}\bfseries}
            {\thesubsubsection}{0.5em}{}
\titlespacing{\subsubsection}
             {0pt}
             {*2.5}
             {*1.5}
\titleformat{\paragraph}[hang]
            {\zihao{4}\bfseries}
            {}{0em}{}
\titlespacing{\paragraph}
             {0pt}
             {*2}
             {*1}
\titleformat{\subparagraph}[hang]
            {\zihao{-4}\bfseries}
            {}{0em}{}
\titlespacing{\subparagraph}
             {0pt}
             {*1.5}
             {*1}
\fi
\setcounter{secnumdepth}{4}
%% 对于|chapter|的编号，要在目录页中使用“第X章”的形式，而保持正文中为单个数字
%% 此处使用了|protect|命令，避免在写入toc文件时即过早扩展|ifbool|命令。
\renewcommand{\thechapter}{\protect\ifbool{jnut@toc}{\jnut@cap@chaptername}{\arabic{chapter}}}
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}
\captionsetup{font=small}
\captionsetup[table]{position=above,labelsep=space}
\captionsetup[figure]{position=below,labelsep=space}
\floatstyle{plaintop}
\restylefloat{table}
\renewcommand*{\baselinestretch}{1.38}
\let\convertergy@oldtabular\tabular
\let\convertergy@endoldtabular\endtabular
\renewenvironment{tabular}%
{\bgroup%
\renewcommand{\arraystretch}{1.38}%
\convertergy@oldtabular}%
{\convertergy@endoldtabular\egroup}
\geometry{headheight=1cm,headsep=3mm,footskip=12mm}
\geometry{top=2cm,bottom=2cm,left=2.5cm,right=2.5cm}
\def\jnut@CJK@charwidth{\hskip \f@size \p@}
\newdimen\jnut@CJK@chardimen
\settowidth\jnut@CJK@chardimen{\jnut@CJK@charwidth\CJKglue}
\newcommand{\jnut@CJK@setfontspace}{%
\settowidth\jnut@CJK@chardimen{\jnut@CJK@charwidth\CJKglue}%
\ifdim\parindent=0pt\relax\else\parindent2\jnut@CJK@chardimen\fi%
}
\renewcommand*{\indent}{\jnut@CJK@setfontspace\parindent2\jnut@CJK@chardimen}
\AtBeginDocument{\indent}
\fancypagestyle{plain}{%
   \renewcommand{\headrulewidth}{0.5pt}
   \renewcommand{\footrulewidth}{0pt}
}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0pt}
\newcommand{\jnut@headfoot@font}{\songti\ifjnut@bachelor\zihao{-5}\else\zihao{5}\fi}
\fancyhead{}
\fancyhead[C]{%
\jnut@headfoot@font%
%% 先处理不规则页眉的情况
\ifbool{bachelor@zhabstract}%
{\ifjnut@bachelordesign%
  \jnut@cap@abstract@bachelordesign%
\else%
  \jnut@cap@abstract@abstractname@bachelorhead%
\fi}%
{%
  \ifbool{bachelor@enabstract}%
  {\jnut@cap@abstract@en@abstractname@bachelorhead}%
  {%
    \ifbool{jnut@appendix}%
    {\jnut@cap@appendixname@head}%
    %% 再处理一般情况
    {\ifthenelse{%
        \isodd{\value{page}}}%
            {%
              \ifjnut@bachelor%
                \ifbool{jnut@main}%
                {\jnut@value@titlea\jnut@value@titleb}%
                {\leftmark}%
              \else%
                \leftmark%
              \fi}%
            {\ifbool{jnut@main}{%
              \ifjnut@bachelorcoursework%
                \jnut@value@institute%
                \jnut@cap@cover@bachelorthesis@coursework@a%
                \jnut@cap@cover@bachelorthesis@coursework@b%
              \else%
                \jnut@value@institute\jnut@cap@cover@thesis%
              \fi}{\leftmark}}%
    }}}%
}
\fancyfoot[C]{\jnut@headfoot@font\thepage}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{%
 \if@mainmatter\chaptertitlename\hspace{1em}\fi{#1}%
}{}}
\let\jnut@origcleardoublepage\cleardoublepage
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \hbox{}\thispagestyle{empty}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\newcommand{\setnonempty}{\let\cleardoublepage\jnut@origcleardoublepage}
\let\jnut@origmainmatter\mainmatter
\def\mainmatter{%
  \jnut@origmainmatter%
  \jnut@state@main%
  \setnonempty%
  \ifjnut@bachelor%
  \else%
  %% 硕士（博士？）论文正文的章节不要强制开始于奇数页
  \@twosidefalse%
  \fi%
}
\let\jnut@origappendix\appendix
\let\jnut@origbackmatter\backmatter
\def\appendix{\jnut@origappendix\jnut@state@appendix}
\def\backmatter{\jnut@origbackmatter\jnut@state@appendix}
\setlist{%
  topsep=0.3em,             % 列表顶端的垂直空白
  partopsep=0pt,            % 列表环境前面紧接着一个空白行时其顶端的额外垂直空白
  itemsep=0ex plus 0.1ex,   % 列表项之间的额外垂直空白
  parsep=0pt,               % 列表项内的段落之间的垂直空白
  leftmargin=1.5em,         % 环境的左边界和列表之间的水平距离
  rightmargin=0em,          % 环境的右边界和列表之间的水平距离
  labelsep=0.5em,           % 包含标签的盒子与列表项的第一行文本之间的间隔
  labelwidth=2em,           % 包含标签的盒子的正常宽度；若实际宽度更宽，则使用实际宽度。
}
\setlist[itemize,1]{label=$\medbullet$}
\setlist[itemize,2]{label=$\blacksquare$}
\setlist[itemize,3]{label=$\Diamondblack$}
\renewenvironment{quote}%
                 {\list{}{\leftmargin=4em\rightmargin=4em}\item[]}%
                 {\endlist}
\renewenvironment{quotation}%
                 {\list{}{\leftmargin=4em\rightmargin=4em}\item[]}%
                 {\endlist}
\let\jnut@origfrontmatter\frontmatter
\def\frontmatter{\jnut@origfrontmatter\pagenumbering{Roman}}
\newcommand\nchapter[1]{%
  \if@mainmatter%
    \@mainmatterfalse%
    \chapter{#1}%
    \@mainmattertrue%
  \else
    \chapter{#1}%
  \fi
}
\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{\zihao{5}$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
     \par}%
  \fi}
\renewcommand*{\l@part}[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       #1
       \leaders\hbox{\zihao{5}$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
       \hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\renewcommand*{\l@chapter}[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \begingroup
      \ifjnut@bachelor\zihao{4}\fi

      %% 设置左边距
      %% FIXME: 要优雅
      \ifjnut@bachelor%
        \settowidth\@tempdima{第~1~章}%
      \else%
        \settowidth\@tempdima{第一章}%
      \fi%
      \advance\@tempdima 0.5em%

      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak
      \leaders\hbox{\zihao{5}$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
      \hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\renewcommand*{\l@section}{%
  \ifjnut@bachelor\zihao{-4}\fi%
  \settowidth\@tempdima{9.9}%
  \advance\@tempdima 0.5em%
  \@dottedtocline{1}{3.4mm}{\@tempdima}%
}
\renewcommand*{\l@subsection}[2]{%
  \begingroup%
  \zihao{5}%
  \settowidth\@tempdima{9.9.9}%
  \advance\@tempdima 0.5em%
  \@dottedtocline{2}{7.41mm}{\@tempdima}{#1}{#2}%
  \endgroup%
}
\renewcommand*{\tableofcontents}{%
    \jnut@state@toc
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    %% 学士学位论文不要把目录本身放进目录
    \ifjnut@bachelor%
      \if@mainmatter%
        \@mainmatterfalse%
        \chapter*{\contentsname}%
        \@mainmattertrue%
      \else%
        \chapter*{\contentsname}%
      \fi%
    \else%
      \nchapter{\contentsname}%
    \fi%
    %% 学士学位论文要设置不规则页眉
    \ifjnut@bachelor%
      \@mkboth{\jnut@cap@contentsname@bachelorhead}{\jnut@cap@contentsname@bachelorhead}%
    \else%
      \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \fi%
    %% 学士学位论文要重新开始小写罗马字母页码
    \ifjnut@bachelor%
      \pagenumbering{roman}%
    \fi%
    %% 生成目录
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
}
\renewcommand*{\listoftables}{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \nchapter{\listtablename}%
    \@mkboth{\MakeUppercase\listtablename}{\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
}
\renewcommand*{\listoffigures}{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \nchapter{\listfigurename}%
    \@mkboth{\MakeUppercase\listfigurename}{\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
}
\renewenvironment{thebibliography}[1]
     {\nchapter{\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
%% bibitem 之间不要多空一行。因为上面重新定义了thebibliography环境，
%% \setlength{\bibsep}{0pt}的方法无效了。
%% http://www.tex.ac.uk/FAQ-compactbib.html
\let\jnut@origbibliography\thebibliography
\renewcommand{\thebibliography}[1]{%
  \jnut@origbibliography{#1}%
  \setlength{\itemsep}{0pt}%
  \setlength{\parskip}{0pt}%
}
\bibliographystyle{gbt7714-2005-jnu}
\setcitestyle{super,square}
\renewcommand\NAT@citesuper[3]{%
\ifNAT@swa%
  \if*#2*\else#2\NAT@spacechar\fi%
  \unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close#3}%
\else #1\fi\endgroup%
}
\AtBeginDocument{%
\let\oldref\ref%
\renewcommand*{\ref}[1]{\thinspace\oldref{#1}}%
\renewcommand*{\eqref}[1]{(\oldref{#1})}
}
\DefineFNsymbols*{circlednumber}[text]{%
   {\ding{192}} %
   {\ding{193}} %
   {\ding{194}} %
   {\ding{195}} %
   {\ding{196}} %
   {\ding{197}} %
   {\ding{198}} %
   {\ding{199}} %
   {\ding{200}} %
   {\ding{201}} %
}%
\setfnsymbol{circlednumber}
\newcommand*{\classification}[1]{%
  \renewcommand*{\jnut@value@nlc@classification}{#1}}
\newcommand*{\securitylevel}[1]{%
  \renewcommand*{\jnut@value@nlc@securitylevel}{#1}}
\newcommand*{\openlevel}{\jnut@cap@nlc@openlevel}
\newcommand*{\controllevel}{\jnut@cap@nlc@controllevel}
\newcommand*{\confidentiallevel}{\jnut@cap@nlc@confidentiallevel}
\newcommand*{\clasifiedlevel}{\jnut@cap@nlc@clasifiedlevel}
\newcommand*{\mostconfidentiallevel}{\jnut@cap@nlc@mostconfidentiallevel}
\newcommand*{\udc}[1]{%
  \renewcommand*{\jnut@value@nlc@udc}{#1}}
\newcommand*{\nlctitlea}[1]{%
  \renewcommand{\jnut@value@nlc@titlea}{#1}}
\newcommand*{\nlctitleb}[1]{%
  \renewcommand{\jnut@value@nlc@titleb}{#1}}
\newcommand*{\nlctitlec}[1]{%
  \renewcommand{\jnut@value@nlc@titlec}{#1}}
\newcommand*{\supervisorinfo}[1]{%
  \renewcommand{\jnut@value@nlc@supervisorinfo}{#1}}
\newcommand*{\chairman}[1]{%
  \renewcommand{\jnut@value@nlc@chairman}{#1}}
\newcommand*{\reviewera}[1]{%
  \renewcommand{\jnut@value@nlc@reviewera}{#1}}
\newcommand*{\reviewerb}[1]{%
  \renewcommand{\jnut@value@nlc@reviewerb}{#1}}
\newcommand*{\reviewerc}[1]{%
  \renewcommand{\jnut@value@nlc@reviewerc}{#1}}
\newcommand*{\reviewerd}[1]{%
  \renewcommand{\jnut@value@nlc@reviewerd}{#1}}
\newcommand*{\nlcdate}[1]{%
  \renewcommand{\jnut@value@nlc@date}{#1}}
\newcommand*{\coursename}[1]{%
  \renewcommand{\jnut@value@coursename}{#1}}
\renewcommand*{\title}[1]{%
  \renewcommand{\jnut@value@title}{#1}%
  \renewcommand{\jnut@value@titlea}{\jnut@value@title}%
  \renewcommand{\jnut@value@titleb}{}}
\newcommand*{\titlea}[1]{%
  \renewcommand{\jnut@value@titlea}{#1}%
  \renewcommand{\jnut@value@title}{\jnut@value@titlea\jnut@value@titleb}}
\newcommand*{\titleb}[1]{%
  \renewcommand{\jnut@value@titleb}{#1}%
  \renewcommand{\jnut@value@title}{\jnut@value@titlea\jnut@value@titleb}}
\renewcommand*{\author}[1]{%
  %% 强制设置盲审版论文的作者为空
  \ifjnut@blindreview\renewcommand{\jnut@value@author}{}\else%
  \renewcommand{\jnut@value@author}{#1}\fi}
\newcommand*{\telphone}[1]{%
  \renewcommand{\jnut@value@telphone}{#1}}
\newcommand*{\email}[1]{%
  \renewcommand{\jnut@value@email}{#1}}
\newcommand*{\studentnum}[1]{%
  \renewcommand{\jnut@value@studentnum}{#1}}
\newcommand*{\grade}[1]{%
  \renewcommand{\jnut@value@grade}{#1}}
\newcommand*{\supervisor}[1]{%
  \renewcommand{\jnut@value@supervisor}{#1}}
\newcommand*{\supervisorpos}[1]{%
  \renewcommand{\jnut@value@supervisorpos}{#1}}
\newcommand*{\supervisorb}[1]{%
  \renewcommand{\jnut@value@supervisorb}{#1}}
\newcommand*{\supervisorbpos}[1]{%
  \renewcommand{\jnut@value@supervisorbpos}{#1}}
\newcommand*{\supervisortelphone}[1]{%
  \renewcommand{\jnut@value@supervisortelphone}{#1}}
\newcommand*{\major}[1]{%
  \renewcommand{\jnut@value@major}{#1}}
\newcommand*{\researchfield}[1]{%
  \renewcommand{\jnut@value@researchfield}{#1}}
\newcommand*{\department}[1]{%
  \renewcommand{\jnut@value@department}{#1}}
\newcommand*{\institute}[1]{%
  \renewcommand{\jnut@value@institute}{#1}}
\newcommand*{\directormembers}[1]{%
  \renewcommand{\jnut@value@directormembers}{#1}}
\newcommand*{\submitdate}[1]{%
  \renewcommand{\jnut@value@submitdate}{#1}}
\newcommand*{\defenddate}[1]{%
  \renewcommand{\jnut@value@defenddate}{#1}}
\newcommand*{\degreedate}[1]{%
  \renewcommand{\jnut@value@degreedate}{#1}}
\newcommand*{\bachelordegreeyear}[1]{%
  \renewcommand{\jnut@value@bachelordegreeyear}{#1}}
\newcommand*{\bachelordegreemonth}[1]{%
  \renewcommand{\jnut@value@bachelordegreemonth}{#1}}
\renewcommand*{\date}[1]{%
  \renewcommand{\jnut@value@date}{#1}}
\newcommand*{\englishtitlea}[1]{%
  \renewcommand{\jnut@value@en@titlea}{#1}}
\newcommand*{\englishtitleb}[1]{%
  \renewcommand{\jnut@value@en@titleb}{#1}}
\newcommand*{\englishauthor}[1]{%
  \renewcommand{\jnut@value@en@author}{#1}}
\newcommand{\englishsupervisor}[1]{%
  \renewcommand{\jnut@value@en@supervisor}{#1}}
\newcommand{\englishmajor}[1]{%
  \renewcommand{\jnut@value@en@major}{#1}}
\newcommand{\englishdepartment}[1]{%
  \renewcommand{\jnut@value@en@department}{#1}}
\newcommand{\englishinstitute}[1]{%
  \renewcommand{\jnut@value@en@institute}{#1}}
\newcommand*{\englishdate}[1]{%
  \renewcommand{\jnut@value@en@date}{#1}}
\newcommand{\jnut@underline}[2][\textwidth]%
           {\CJKunderline{\makebox[#1]{#2}}}
%% 左对齐
\newcommand{\jnut@ljustunderline}[3]%
           {\CJKunderline{\hbox to #1{\hspace{#2}#3\hfill}}}
\newcommand{\jnut@titleunderline}[2][\textwidth]%
           {\jnut@ljustunderline{#1}{0em}{#2}}
\newcommand{\jnut@infounderline}[2][\textwidth]%
           {\jnut@ljustunderline{#1}{3.5em}{#2}}

\def\jnutunderline{\@ifnextchar[\jnut@underline\CJKunderline}
\def\jnutschoolunderline{\@ifnextchar[\jnut@underline\CJKunderline}
\def\jnuttitleunderline{\@ifnextchar[\jnut@titleunderline\CJKunderline}
\def\jnutinfounderline{\@ifnextchar[\jnut@infounderline\CJKunderline}
\newcommand*{\makenlctitle}{%
  \thispagestyle{empty}
  \pdfbookmark[0]{\jnut@cap@nlc}{nlc}
  {\songti\zihao{-4}
    \makebox[40pt][l]{\jnut@cap@nlc@classification}
    \jnutunderline[150pt]{\jnut@value@nlc@classification}
    \hfill
    \makebox[40pt][r]{\jnut@cap@nlc@securitylevel}
    \jnutunderline[150pt]{\jnut@value@nlc@securitylevel}
    \vskip 10pt
    \makebox[40pt][l]{\jnut@cap@nlc@udc}
    \jnutunderline[150pt]{\jnut@value@nlc@udc}
  }
  \vskip\stretch{2}
  \begin{center}
    \def\ULthickness{1pt}
    {\kaishu\zihao{-0} \jnut@cap@nlc@title}
    {\kaishu\zihao{1}
    \vskip \stretch{1}
    \jnutunderline[12em]{\jnut@value@nlc@titlea}\\
    \jnutunderline[12em]{\jnut@value@nlc@titleb}\\
    \jnutunderline[12em]{\jnut@value@nlc@titlec}\\
    }
    \vskip \stretch{1}
    {\kaishu\zihao{4}\jnut@cap@nlc@quotetitle}
    \vskip \stretch{1}
    {\kaishu\zihao{1}\jnutunderline{\jnut@value@author}}
    \vskip \stretch{1}
    {\kaishu\zihao{4}\jnut@cap@nlc@author}
  \end{center}
  \vskip\stretch{1}
  {\kaishu\zihao{4}
    \noindent\jnut@cap@nlc@supervisor%
    \jnutunderline[94pt]{\jnut@value@supervisor}\par
    \noindent\jnutunderline[\textwidth]{%
      \jnut@value@nlc@supervisorinfo}\par
    \noindent\jnut@cap@nlc@degree%
    \jnutunderline[8em]{\jnut@value@degree}%
    \noindent\jnut@cap@nlc@major%
    \jnutunderline[164pt]{\jnut@value@major}\par
    \noindent\jnut@cap@nlc@submitdate%
    \jnutunderline[8em]{\jnut@value@submitdate}%
    \jnut@cap@nlc@defenddate%
    \jnutunderline[134pt]{\jnut@value@defenddate}\par
    \noindent\jnut@cap@nlc@institute\jnutunderline[290pt]{}\par
    \noindent\hfill\jnut@cap@nlc@chairman%
    \jnutunderline[9em]{\jnut@value@nlc@chairman}\par
    \noindent\hfill\jnut@cap@nlc@reviwer%
    \jnutunderline[9em]{\jnut@value@nlc@reviewera}\par
    \noindent\hfill\jnutunderline[9em]{\jnut@value@nlc@reviewerb}\par
    \noindent\hfill\jnutunderline[9em]{\jnut@value@nlc@reviewerc}\par
    \noindent\hfill\jnutunderline[9em]{\jnut@value@nlc@reviewerd}\par
  }
  \cleardoublepage
}
%%
%% 硕士学位论文底部校名、地址、日期，需要已经位于|centering|环境中
%%
\newcommand*{\jnut@covertable@institutefooter}[2]{%
  \begingroup
    \bf\IfEqCase{#1}{{prodegree}{\songti}}[\heiti]\zihao{-2}%
    %% 模拟一个空格的“字距”效果
    \renewcommand{\CJKglue}{\hskip 3mm}%
    \jnut@value@institute%
  \endgroup

  #2

  %% TODO: 此处样式
  {\IfEqCase{#1}{{prodegree}{\bf}}\songti\zihao{5}地址：无锡市蠡湖大道1800号}

  #2

  {\IfEqCase{#1}{{prodegree}{\bf}}\songti\zihao{-4}{\jnut@value@date}}
}
%%
%% 学术型硕士学位论文封面，两行标题
%%
\newcommand*{\jnut@covertable@masterphdtitle@academic}{
  \songti\zihao{4}
  \def\tabcolsep{1pt}
  \def\arraystretch{1.5}
  \begingroup
  \setlength\extrarowheight{0.75em}
  \begin{tabular}{p{7.3em}c}
      \makebox[7em][s]{\jnut@cap@cover@title:}
      & \jnutunderline[310pt]{\jnut@value@titlea}\\
      \makebox[7em][s]{}
      & \jnutunderline[310pt]{\jnut@value@titleb}\\
      \makebox[7em][s]{\jnut@cap@cover@entitle:}
  & \jnutunderline[310pt]{\zihao{5}\jnut@value@en@titlea}\\
      \makebox[7em][s]{}
  & \jnutunderline[310pt]{\zihao{5}\jnut@value@en@titleb}\\
      \makebox[7em][s]{\jnut@cap@cover@author:}
      & \jnutunderline[310pt]{\jnut@value@author}\\
      \makebox[7em][s]{\jnut@cap@cover@major:}
      & \jnutunderline[310pt]{\jnut@value@major}\\
      \makebox[7em][s]{\jnut@cap@cover@researchfield:}
      & \jnutunderline[310pt]{\jnut@value@researchfield}\\
      \makebox[7em][s]{\jnut@cap@cover@supervisor:}
      & \jnutunderline[310pt]{\jnut@value@supervisor~\jnut@value@supervisorpos}\\
      \makebox[7em][s]{\jnut@cap@cover@directormembers:}
      & \jnutunderline[310pt]{\jnut@value@directormembers}\\
      \makebox[7em][s]{\jnut@cap@cover@degreedate:}
      & \jnutunderline[310pt]{\jnut@value@degreedate}\\
      & \hfill\jnut@cap@nlc@chairman\jnutunderline[100pt]{\jnut@value@nlc@chairman}\\
  \end{tabular}
  \endgroup

  \vfill

  \jnut@covertable@institutefooter{academic}{\vfill}
}
%%
%% 专业硕士学位论文封面
%%
\newcommand*{\jnut@covertable@masterphdtitle@prodegree}{
  \vfill

  \begingroup
  \def\tabcolsep{1pt}
  \bf
  \songti
  \zihao{-3}
  \begin{tabular}{p{40.6mm}p{31.8mm}p{38.1mm}p{8.6mm}p{33.2mm}}
    \makebox[40.6mm][s]{\jnut@cap@cover@title：} & \multicolumn{4}{c}{\jnutunderline[111.7mm]{\jnut@value@titlea}} \\
    & \multicolumn{4}{c}{\jnutunderline[111.7mm]{\jnut@value@titleb}} \\

    \makebox[40.6mm][s]{\jnut@cap@cover@entitle：} & \multicolumn{4}{c}{\jnutunderline[111.7mm]{\zihao{5}\jnut@value@en@titlea}} \\
    & \multicolumn{4}{c}{\jnutunderline[111.7mm]{\zihao{5}\jnut@value@en@titleb}} \\
    %% TODO: 第三行英文标题
    & \multicolumn{4}{c}{\jnutunderline[111.7mm]{}} \\

    \makebox[40.6mm][s]{\jnut@cap@cover@author：} & \jnutunderline[31.8mm]{\jnut@value@author} &
    \makebox[38.1mm][s]{\jnut@cap@cover@major@prodegree：} & \multicolumn{2}{c}{\jnutunderline[41.8mm]{\jnut@value@major}} \\

    \makebox[40.6mm][s]{\jnut@cap@cover@researchfield：} & \multicolumn{4}{c}{\jnutunderline[111.7mm]{\jnut@value@researchfield}} \\

    \makebox[40.6mm][s]{\jnut@cap@cover@supervisor@prodegree@a：} & \jnutunderline[31.8mm]{\jnut@value@supervisor} &
    \makebox[38.1mm][s]{\jnut@cap@cover@supervisor@prodegree@pos：} & \multicolumn{2}{c}{\jnutunderline[41.8mm]{\jnut@value@supervisorpos}} \\

    \makebox[40.6mm][s]{\jnut@cap@cover@supervisor@prodegree@b：} & \jnutunderline[31.8mm]{\jnut@value@supervisorb} &
    \makebox[38.1mm][s]{\jnut@cap@cover@supervisor@prodegree@pos：} & \multicolumn{2}{c}{\jnutunderline[41.8mm]{\jnut@value@supervisorbpos}} \\

    \makebox[40.6mm][s]{\jnut@cap@cover@degreedate：} & \multicolumn{4}{c}{\jnutunderline[111.7mm]{\jnut@value@degreedate}} \\

    \\
    & & \multicolumn{2}{l}{\makebox[46.7mm][s]{\jnut@cap@nlc@chairman}} & \jnutunderline[33.2mm]{\jnut@value@nlc@chairman} \\
  \end{tabular}
  \endgroup

  \vfill

  \jnut@covertable@institutefooter{prodegree}{\vspace*{2mm}}
}
%%
%% 学士学位封面页，编号
%%
\newcommand*{\jnut@covertable@bachelortitle@number}{
    \begingroup
    \songti\zihao{-4}
    %% 27em 是估计的值, 原模板此处是首行缩进 10 字符然后居中...
    %% 尼玛这什么排版技巧, wtf
    %% 还有字符间距...
    \setlength{\parindent}{27em}
    \renewcommand{\CJKglue}{\hskip 1.411112mm}
    \textbf{编号}
    \endgroup
}
%%
%% 学士学位封面页，主要信息部分
%%
\newcommand*{\jnut@covertable@bachelortitle@content}{
      \begingroup
        \zihao{2}
        \begin{tabular}{lc}
          \textbf{\songti\jnut@cap@cover@bachelortitle} & \jnuttitleunderline[320pt]{\heiti\jnut@value@titlea}\\
                                                        & \jnuttitleunderline[320pt]{\heiti\jnut@value@titleb}\\
        \end{tabular}
      \endgroup

      \vskip \stretch{1}
      \zihao{-2}

      \begingroup
        %% 我已经承受不来...
        \let\JNUTorigCJKglue=\CJKglue
        \jnutschoolunderline[180pt]{\heiti\jnut@value@department}%
        \renewcommand{\CJKglue}{\hskip 1.058334mm}%
        \jnut@cap@cover@bachelordepartment%
        \let\CJKglue=\JNUTorigCJKglue%
        \jnutschoolunderline[130pt]{\heiti\jnut@value@major}%
        \renewcommand{\CJKglue}{\hskip 1.058334mm}%
        \jnut@cap@cover@bachelormajor
      \endgroup

      \vskip 20mm

      \def\tabcolsep{1pt}
      \def\arraystretch{1.5}
      \begin{tabular}{lc}
        \songti\jnut@cap@cover@bachelorstudentnum & \jnutinfounderline[220pt]{\heiti\jnut@value@studentnum}\\
        \songti\jnut@cap@cover@bachelorauthor & \jnutinfounderline[220pt]{\heiti\jnut@value@author}\\
        \songti\jnut@cap@cover@bachelorsupervisor & \jnutinfounderline[220pt]{\heiti\jnut@value@supervisor~\jnut@value@supervisorpos}\\
                                                  & \jnutinfounderline[220pt]{\heiti\jnut@value@supervisorb~\jnut@value@supervisorbpos}\\
      \end{tabular}%\\

    \vskip 10mm
}
%%
%% 学士学位封面页，底部
%%
\newcommand*{\jnut@covertable@bachelortitle@footer}{%
    \zihao{-2}
    \heiti{\CJKdigits\jnut@value@bachelordegreeyear}\songti{年}%
    \heiti{\CJKnumber\jnut@value@bachelordegreemonth}\songti{月}
}
%%
%% 学士学位封面页
%%
\def\jnut@covertable@bachelortitle[#1]{
  \thispagestyle{empty}
  \pdfbookmark[0]{\jnut@cap@cover}{cover}
  \begin{onehalfspace}
    %% 外文资料翻译封面页和本科课设封面没有编号部分
    \IfEqCase{#1}{%
      %% 顶部边距是随手写的
      {translation}{\vglue 10mm}%
      {coursework}{}%
    }[\jnut@covertable@bachelortitle@number]

    \begin{center}
      \vskip 20mm

      %% 原模板如此, 丑陋啊丑陋... 没有保持纵横比, 不过算了
      \includegraphics[height=2.05cm,width=6.14cm]{\jnut@cap@institute@name} \\

      \vskip 20mm

      \begingroup
        %% 字符间距, 为何都是如此恶趣味的数字...
        \renewcommand{\CJKglue}{\hskip 0.881945mm}
        \bf\songti\zihao{-0}

        \IfEqCase{#1}{%
          {normal}{\jnut@cap@cover@bachelorthesis@normal}%
          {related}{\jnut@cap@cover@bachelorthesis@related}%
          {translation}{\jnut@cap@cover@bachelorthesis@related}%
          {coursework}{\jnut@cap@cover@bachelorthesis@coursework@a}%
        }[\jnut@cap@cover@bachelorthesis@normal]
      \endgroup

      \IfEqCase{#1}{%
        {translation}{%
          %% 外文资料翻译及原文封面页，没有论文信息，有 footer
          %% 此处间隔随手写的
          \vskip 40mm%
          \begingroup%
            %% 原模板为0.88mm，“小初”磅或更大，都是什么鬼
            \renewcommand{\CJKglue}{\hskip 2mm}%
            %% 原模板此处为28pt
            \bf\songti\zihao{1}%
            \jnut@cap@cover@bachelorthesis@translation@b
            %% 随手写的
            \vskip 5mm
            \jnut@cap@cover@bachelorthesis@translation@c
          \endgroup

          \vskip \stretch{1}

          \jnut@covertable@bachelortitle@footer
        }%
        {related}{%
          %% 相关资料封面页
          \vskip 5mm%
          \begingroup%
            \renewcommand{\CJKglue}{\hskip 1.058334mm}%
            \textbf{\songti\zihao{1}\jnut@cap@cover@bachelorthesis@related@b}%
          \endgroup%
          \vskip 10mm%

          \jnut@covertable@bachelortitle@content%
          \jnut@covertable@bachelortitle@footer%
        }%
        {coursework}{%
          %% 本科课设
          \vskip 5mm%
          \begingroup%
          %% 标题第二行，与上一行一样
          \renewcommand{\CJKglue}{\hskip 0.881945mm}%
          \bf\songti\zihao{-0}%
          \jnut@cap@cover@bachelorthesis@coursework@b%
          \endgroup%
          %% 其余部分，与正常封面一样
          \vskip 10mm%
          \jnut@covertable@bachelortitle@content%
          \jnut@covertable@bachelortitle@footer%
        }%
        {normal}{%
          %% 正常封面页
          \vskip 20mm%

          \jnut@covertable@bachelortitle@content%
          \jnut@covertable@bachelortitle@footer%
        }%
      }[\PackageError{JNUthesis}{Undefined option to bachelortitle: #1}{}]%
    \end{center}
  \end{onehalfspace}

  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
%%
%% 硕士学位论文封面内部
%%
\newcommand*{\jnut@covertable@masterphdtitle@inner@normal}{%
  {%
    \songti\zihao{4}%
    {\bf\songti\jnut@cap@nlc@classification}%
    ~\jnut@value@nlc@classification%
    \hfill%
    {\bf\songti\jnut@cap@nlc@securitylevel}%
    ~\jnut@value@nlc@securitylevel%
  }
  \vskip 10mm
  \includegraphics[height=1.46cm,width=5.20cm]{\jnut@cap@institute@name} \\
  {\bf\heiti\zihao{1}
  \ifjnut@prodegree%
  \jnut@cap@cover@thesis%
  \else%
  \makebox[12em][s]{\jnut@cap@cover@thesis}%
  \fi}\\
  \vskip\stretch{1}
  \ifjnut@prodegree
  \jnut@covertable@masterphdtitle@prodegree
  \else
  \jnut@covertable@masterphdtitle@academic
  \fi
}
%%
%% 盲审版硕士学位论文封面内部
%%
\newcommand*{\jnut@covertable@masterphdtitle@inner@blindreview}{%
  \includegraphics[height=1.34cm,width=4.78cm]{\jnut@cap@institute@name}
  \vskip 5mm
  {\bf\heiti\zihao{1}\jnut@cap@cover@masterthesis@blindreview}

  %% 专硕盲审封面没有学年
  \ifjnut@prodegree
  \vskip 10mm
  \else
  \vskip 5mm
  {\begingroup%
    \bf\songti\zihao{3}%
    （%
    %% 取当前年份，计算学年
    %% 假设当前时间为下学期，那么我们就在{\number\year - 1}到{\number\year}学年
    \def\schoolyearend{\number\year}%
    \FPeval{\schoolyearstart}{clip(\schoolyearend - 1)}%
    {\schoolyearstart\textasciitilde{}\schoolyearend}学年%
    ）%
  \endgroup}
  \fi

  \vskip 10mm
  {\bgroup
  \songti\zihao{4}
  \def\tabcolsep{1pt}
  \begin{tabular}{p{7.3em}c}
      \makebox[7em][s]{\jnut@cap@cover@title:}
      & \jnutunderline[310pt]{\jnut@value@titlea}\\
      \makebox[7em][s]{}
      & \jnutunderline[310pt]{\jnut@value@titleb}\\
  \end{tabular}

  \vfill

  \begin{tabular}{p{7.3em}c}
      \makebox[7em][s]{\jnut@cap@cover@entitle:}
      & \jnutunderline[310pt]{\zihao{5}\jnut@value@en@titlea}\\
      \makebox[7em][s]{}
      & \jnutunderline[310pt]{\zihao{5}\jnut@value@en@titleb}\\
  \end{tabular}

  \vfill

  \begin{tabular}{p{7.3em}c}
      \makebox[7em][s]{\jnut@cap@cover@blindreview@number@a:}
      {\zihao{5}\jnut@cap@cover@blindreview@number@b}
      & \jnutunderline[310pt]{}\\
  \end{tabular}

  \vfill

  \begin{tabular}{p{7.3em}c}
      \makebox[7em][s]{\jnut@cap@cover@major:}
      & \jnutunderline[310pt]{\jnut@value@major}\\
  \end{tabular}

  \vfill

  \begin{tabular}{p{7.3em}c}
      \makebox[7em][s]{\jnut@cap@cover@researchfield:}
      & \jnutunderline[310pt]{\jnut@value@researchfield}\\
  \end{tabular}
  \egroup}

  \vfill

  %% 很脏的 hack，通过让下边高一些来让上边的垂直间隔小一点
  %% TODO: 优雅地解决这个问题
  \vspace*{15mm}

  %% 专硕盲审封面也用学硕此处的底部格式
  \jnut@covertable@institutefooter{academic}{\vspace*{5mm}}
}
%%
%% 硕士学位论文封面
%%
\newcommand*{\jnut@covertable@masterphdtitle}{%
  \thispagestyle{empty}
  \pdfbookmark[0]{\jnut@cap@cover}{cover}
  \begin{center}
    \ifjnut@blindreview%
      \jnut@covertable@masterphdtitle@inner@blindreview%
    \else%
      \jnut@covertable@masterphdtitle@inner@normal%
    \fi%
  \end{center}
  \cleardoublepage
}
%%
%% |maketitle| 命令
%%
\renewcommand*{\maketitle}{%
  \ifjnut@bachelor%
    \ifjnut@bachelorcoursework%
      \jnut@covertable@bachelortitle[coursework]%
    \else%
      \jnut@covertable@bachelortitle[normal]%
    \fi%
  \else%
    \jnut@covertable@masterphdtitle%
  \fi%
}
\newcommand*{\makebachelorrelated}{%
  \jnut@covertable@bachelortitle[related]%
}
\newcommand*{\makebachelortranslation}{%
  \jnut@covertable@bachelortitle[translation]%
}
\newcommand*{\makeenglishtitle}{%
  \thispagestyle{empty}
  \begin{center}
    \vspace*{20pt}
    %% TODO: 两行英文标题；查证江南大学是否完全不需要英文封面
    \bf\sffamily\zihao{2}\jnut@value@en@titlea\jnut@value@en@titleb
    \vskip \stretch{1}
    \normalfont\rmfamily\zihao{4}\jnut@cap@cover@en@by
    \vskip 3pt
    \bf\sffamily\zihao{4}\jnut@value@en@author
    \vskip\stretch{1}
    \normalfont\rmfamily\zihao{4}\jnut@cap@cover@en@supervisor
    \vskip 3pt
    \normalfont\sffamily\zihao{4}\jnut@value@en@supervisor
    \vskip\stretch{1}
    \normalsize\rmfamily\jnut@cap@cover@en@statement
    \vskip\stretch{2}
    %% TODO: 此处未移植，待查证江南大学格式并实现
    %% \includegraphics[width=2.5cm]{\jnut@cap@institute@logo} \\
    \vskip 3mm
    \normalfont\jnut@value@en@department\\
    \jnut@value@en@institute
    \vskip 30pt
    \normalfont\normalsize\jnut@value@en@date
  \end{center}
  \normalfont
  \cleardoublepage
}
\newcommand*{\jnut@covertable@originalitypage}{%
  \thispagestyle{empty}
  \bgroup
  \bf\kaishu\zihao{4}
  \begin{center}
    %% not sure why \ziju causes compilation error here
    \begingroup
    \renewcommand{\CJKglue}{\hskip 0.5em}
    \heiti\zihao{3}独创性声明
    \endgroup
  \end{center}

  \vskip 2em
  本人声明所呈交的学位论文是本人在导师指导下进行的研究工作及取得的研究成果。
  尽我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，
  也不包含本人为获得江南大学或其它教育机构的学位或证书而使用过的材料。
  与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示谢意。

  \vskip 1.5em
  \begingroup
    %% \ziju{5.29mm}
    \begin{tabular}{ll}
      签　　名：\jnutunderline[8em]{} & 日　　期：\\
    \end{tabular}
  \endgroup

  \vfill

  \begin{center}
    \heiti\zihao{3}关于论文使用授权的说明
  \end{center}

  本学位论文作者完全了解江南大学有关保留、使用学位论文的规定：
  江南大学有权保留并向国家有关部门或机构送交论文的复印件和磁盘，
  允许论文被查阅和借阅，可以将学位论文的全部或部分内容编入有关数据库进行检索，
  可以采用影印、缩印或扫描等复制手段保存、汇编学位论文，
  并且本人电子文档的内容和纸质论文的内容相一致。

  保密的学位论文在解密后也遵守此规定。
  \vskip 1.5em
  \begingroup
    %% \ziju{5.29mm}
    \begin{tabular}{ll}
      签　　名：\jnutunderline[8em]{} & 导师签名：\jnutunderline[8em]{} \\
                                      & 日　　期：\\
    \end{tabular}
  \endgroup

  \vfill

  \egroup
  \cleardoublepage
}
\newcommand*{\jnut@covertable@originalitypage@scanned}[1]{%
  %% 支持 \cs{\makeoriginalitypage{}} 这种形式，回落到模板页
  \ifthenelse{\isempty{#1}}%
  {\jnut@covertable@originalitypage}%
  {%
    %% https://tex.stackexchange.com/a/36887
    \null%
    \thispagestyle{empty}%
    %% https://tex.stackexchange.com/a/167741
    \AddToShipoutPictureBG*{\includegraphics[width=\paperwidth,height=\paperheight]{#1}}%
    \cleardoublepage%
  }%
}
\DeclareDocumentCommand\makeoriginalitypage{ g }{%
  \ifjnut@blindreview%
  \else%
    \IfNoValueTF {#1}
    {\jnut@covertable@originalitypage}
    {\jnut@covertable@originalitypage@scanned{#1}}%
  \fi%
}
\newcommand*{\abstracttitlea}[1]{%
  \renewcommand{\jnut@value@abstract@titlea}{#1}%
}
\newcommand*{\abstracttitleb}[1]{%
  \renewcommand{\jnut@value@abstract@titleb}{#1}%
}
\newenvironment{abstract}{%
  \jnut@state@zhabstract
  \ifjnut@bachelor
    \pdfbookmark[0]{\jnut@cap@abstract}{abstract}
    \begin{center}
      {\bf\ifjnut@bachelor\songti\else\heiti\fi\zihao{3}%
      \ifjnut@bachelordesign%
        \jnut@cap@abstract@bachelordesign%
      \else%
        \jnut@cap@abstract@abstractname%
    \fi}
    \end{center}
  \else
    \if@twoside%
      \@twosidefalse%
    \fi%
    \nchapter{\jnut@cap@abstract@abstractname}
  \fi%
  \normalsize\par%
}{%
  \clearpage%
  %% 明明接下来也要保持 twoside 关闭，但省略这里的切换会导致谜之失效，见下
  \ifjnut@bachelor\else%
    \if@twoside%
      \@twosidetrue%
    \fi%
  \fi%
}
\newcommand{\keywords}[1]{%
  \renewcommand*{\jnut@value@abstract@keywords}{#1}%
  \par\vspace{2ex}\noindent%
  {\bf\songti\jnut@cap@abstract@keywordsname{：}}~{#1}%
}
\newcommand*{\englishabstracttitlea}[1]{%
  \renewcommand{\jnut@value@abstract@en@titlea}{#1}%
}
\newcommand*{\englishabstracttitleb}[1]{%
  \renewcommand{\jnut@value@abstract@en@titleb}{#1}%
}
\newenvironment{englishabstract}{%
  \jnut@state@enabstract
  \ifjnut@bachelor
    \pdfbookmark[0]{\jnut@cap@abstract@en}{englishabstract}
    \begin{center}
      {\bf\zihao{3}\jnut@cap@abstract@en@abstractname}
    \end{center}
  \else
    %% 明明中文摘要跟英文摘要之间没有空白页，但 twoside 还是要重新打开关闭一次
    \if@twoside%
      \@twosidefalse%
    \fi%
    \nchapter{\jnut@cap@abstract@en@abstractname}
  \fi%
  \normalsize\par%
}{%
  %% 硕博论文的目录和正文第一页都要开始于奇数页，因此这里要暂时打开 twoside
  \ifjnut@bachelor\else%
    \if@twoside%
      \@twosidetrue%
    \fi%
  \fi%
  \cleardoublepage%
}
\newcommand{\englishkeywords}[1]{%
  \renewcommand*{\jnut@value@abstract@en@keywords}{#1}%
  \par\vspace{2ex}\noindent%
  {\bf\jnut@cap@abstract@en@keywordsname{:}}~~{#1}%
}
\newenvironment{preface}{%
  \nchapter{\jnut@cap@preface}
}{}
\ifjnut@blindreview
\newenvironment{acknowledgement}{}{}
\excludecomment{acknowledgement}
\else
\newenvironment{acknowledgement}{%
  \nchapter{\jnut@cap@acknowledgementname}
}{}
\fi
\newenvironment{resume}{%
  \nchapter{\jnut@cap@resume@chaptername}
}{}
\newenvironment{authorinfo}{%
  \paragraph*{\jnut@cap@resume@authorinfo}
}{}
\newenvironment{education}{%
  \paragraph*{\jnut@cap@resume@education}
  \begin{description}[labelindent=0em, leftmargin=8em, style=sameline]
}{%
  \end{description}
}
\newenvironment{publications}{%
  %% 江南大学不需要小标题
  %% \paragraph*{\jnut@cap@resume@publications}
  \begin{enumerate}[label=\arabic*., labelindent=0em, leftmargin=*]
}{%
  \end{enumerate}
}
\newenvironment{projects}{%
  \paragraph*{\jnut@cap@resume@projects}
  \begin{enumerate}[label=\arabic*., labelindent=0em, leftmargin=*]
}{%
  \end{enumerate}
}
\newcommand*{\jnut@cap@datefield}{%
\jnutunderline[1cm]{}{\jnut@cap@year}%
\jnutunderline[1cm]{}{\jnut@cap@month}%
\jnutunderline[1cm]{}{\jnut@cap@day}
}
\newcommand*{\jnut@license@makedeclaration}{%
\par\jnut@cap@license@declaration
\vspace{5mm}
\begin{flushright}
  \jnut@cap@license@sign\jnutunderline[6cm]{}\\
  \jnut@cap@datefield\\
\end{flushright}%
}
\newcommand*{\jnut@license@maketable}{%
\noindent\zihao{5}%
\begin{tabular*}{\textwidth}
    {|C{2.2cm}|C{2cm}|C{1.5cm}|C{2.1cm}|C{1.42cm}C{1.5cm}|C{1.25cm}|}
  \hline
  \cell{2.2cm}{1cm}{\jnut@cap@license@title}
  & \multicolumn{6}{c|}{\jnut@value@title} \\
  \hline
  \cell{2.2cm}{1cm}{\jnut@cap@license@studentnum}
  & {\jnut@value@studentnum}
  & {\jnut@cap@license@department}
  & \multicolumn{2}{c|}{%
    \cell{3.52cm}{1cm}{\jnut@value@department}%
  }
  & {\jnut@cap@license@grade}
  & {\jnut@value@grade} \\
  \hline
  \cell{2.2cm}{1.5cm}{\jnut@cap@license@category}
  & \multicolumn{3}{c}{
    \begin{tabular*}{5.6cm}{p{2.8cm}p{2.8cm}}
       \ifjnut@master%
           {{\zihao{-4}$\CheckedBox$}}%
       \else%
           {{\zihao{4}$\Square$}}%
       \fi%
       \jnut@cap@license@categorymaster
      & {\zihao{4}$\Square$}%
       \jnut@cap@license@categorymasterspec \\
       \ifjnut@phd%
           {{\zihao{-4}$\CheckedBox$}}%
       \else%
           {{\zihao{4}$\Square$}}%
       \fi%
       \jnut@cap@license@categoryphd
      & {\zihao{4}$\Square$}%
       \jnut@cap@license@categoryphdspec \\
    \end{tabular*}}
  & \multicolumn{3}{c|}{%
    \raisebox{-1em}{\jnut@cap@license@categoryhint}}\\
  \hline
  \cell{2.2cm}{1cm}{\jnut@cap@license@telphone}
  & \multicolumn{2}{c|}{{\jnut@value@telphone}}
  & {\jnut@cap@license@email}
  & \multicolumn{3}{c|}{{\jnut@value@email}}  \\
  \hline
  \cell{2.2cm}{1cm}{\jnut@cap@license@supervisorname}
  & \multicolumn{2}{c|}{{\jnut@value@supervisor}}
  & {\jnut@cap@license@supervisortelphone}
  & \multicolumn{3}{c|}{{\jnut@value@supervisortelphone}} \\
  \hline
\end{tabular*}
}
\newcommand{\jnuthesis}{\texttt{JNU-Thesis}}
\newcommand{\zhdash}{\kern0.3ex\rule[0.8ex]{2em}{0.1ex}\kern0.3ex}
\newcommand{\cell}[3]{\parbox[c][#2][c]{#1}{\makebox[#1]{#3}}}
\newcolumntype{C}[1]{>{\centering\let\newline\\%
    \arraybackslash\hspace{0pt}}p{#1}}
\newlist{arabicenum}{enumerate}{3}
\setlist[arabicenum,1]{label=\textnormal%
  {\textnormal{(\arabic*)}}}
\setlist[arabicenum,2]{label=\textnormal%
  {\textnormal{(\arabic{arabicenumi}.\arabic*)}}}
\setlist[arabicenum,3]{label=\textnormal%
  {\textnormal{(\arabic{arabicenumi}.\arabic{arabicenumii}.\arabic*)}}}
\newlist{romanenum}{enumerate}{2}
\setlist[romanenum,1]{label={\textnormal{\roman*.}}}
\setlist[romanenum,2]{label={\textnormal{\alph*\,)}}}
\newlist{alphaenum}{enumerate}{2}
\setlist[alphaenum,1]{label={\textnormal{\alph*\,)}}}
\setlist[alphaenum,2]{label={\textnormal{\alph{alphaenumi}.\arabic*\,)}}}
\newlist{caseenum}{enumerate}{2}
\setlist[caseenum,1]{label={\textnormal{\jnut@cap@case\arabic*.}}}
\setlist[caseenum,2]{label={\textnormal{\jnut@cap@subcase\arabic{caseenumi}.\arabic*.}}}
\setlist[caseenum]{leftmargin=*}
\newlist{stepenum}{enumerate}{2}
\setlist[stepenum,1]{label={\textnormal{\jnut@cap@step\arabic*.}}}
\setlist[stepenum,2]{label={\textnormal{\jnut@cap@substep\arabic{stepenumi}.\arabic*.}}}
\setlist[stepenum]{leftmargin=*}
\newcommand*{\jnut@setpdfinfo}{\hypersetup{%
        pdftitle={\jnut@value@title},
        pdfauthor={\jnut@value@author},
        pdfsubject={\jnut@cap@cover@apply},
        pdfkeywords={\jnut@value@abstract@keywords},
        pdfcreator={\jnut@value@author},
        pdfproducer={XeLaTeX with the JNU-Thesis document class}}
}
\AtBeginDocument{\jnut@setpdfinfo}
\endinput
%%
%% End of file `jnuthesis.cls'.
