%%
%% This is file `JNUthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% JNUthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2014 by Wang Xuerui <https://github.com/xen0n> and
%% any individual authors listed elsewhere in this file.
%% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%% 
%% Homepage: https://github.com/xen0n/JNUthesis
%% 
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{JNUthesis}
  [2014/05/30 v0.1 JNUthesis%
   document class]
\newif\ifJNUT@phd \JNUT@phdfalse
\newif\ifJNUT@master \JNUT@masterfalse
\newif\ifJNUT@bachelor \JNUT@bachelorfalse
\DeclareOption{phd}{\JNUT@phdtrue}
\DeclareOption{master}{\JNUT@mastertrue}
\DeclareOption{bachelor}{\JNUT@bachelortrue}
\newif\ifJNUT@dvips \JNUT@dvipsfalse
\DeclareOption{dvips}{\JNUT@dvipstrue}
\DeclareOption{dvipdfm}{\JNUT@dvipsfalse}
\DeclareOption{pdftex}{\JNUT@dvipsfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbookutf8}}
\ProcessOptions\relax
\LoadClass[cs4size,a4paper,fancyhdr,fntef,UTF8]{ctexbookutf8}[2005/11/25]
%% math packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
%% paragraph indent
\RequirePackage{indentfirst}
%% line spacing
\RequirePackage{setspace}
%% required for different page headers for even and odd pages
\RequirePackage{ifthen}
%% required for custom caption format
\RequirePackage{caption}
%% graphics packages
\RequirePackage{graphicx}
%% We put JNU logo in the subdir figures/, so we must declare it here.
\graphicspath{{figures/}}
%% check pdfTeX mode
\RequirePackage{ifpdf}
%% packages and settings depend on PDF mode
%% also check for XeTeX
\ifxetex
  \RequirePackage{hyperref}
  \DeclareGraphicsExtensions{.pdf}
\else
  \ifpdf   % We're running pdfTeX in PDF mode
    \RequirePackage[pdftex]{hyperref}
    \DeclareGraphicsExtensions{.pdf,.png}
  \else    % We're not running pdfTeX, or running pdfTeX in DVI mode
    \ifJNUT@dvips
      \RequirePackage[dvips]{hyperref}
      \RequirePackage{psfrag}
%%    \AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}} % GBK -> Unicode
      \AtBeginDvi{\special{pdf:tounicode UTF8-UCS2}} % UTF-8
    \else
      \RequirePackage[dvipdfmx]{hyperref}
    \fi
    \DeclareGraphicsExtensions{.eps,.ps}
  \fi
\fi
%% sort and compress citations, use superscript for citation
\RequirePackage[sort&compress,square,numbers,super]{natbib}
%% Define link colors
\RequirePackage{color}
\definecolor{darkblue}{rgb}{0,0,0.55}
\hypersetup{ %%CJKbookmarks,%
%%  unicode,%
%%  pdftex,%
       bookmarksnumbered,%
              colorlinks,%
               linkcolor=black,%
               citecolor=darkblue,%
              plainpages=false,%
            pdfstartview=FitH}
\RequirePackage{xstring}
\AtEndOfPackage{\makeatletter\input{JNUthesis.cfg}\makeatother}
%% Define page layout.
\RequirePackage{geometry}
\geometry{top=2cm,bottom=2cm,left=2cm,right=2cm}
\geometry{headheight=14mm,bindingoffset=5mm}
\parskip 0.5ex plus 0.25ex minus 0.25ex
\def\JNUT@origcleardoublepage\cleardoublepage
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \thispagestyle{empty}%
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\def\JNUT@origmainmatter\mainmatter
\def\mainmatter{\clearpage\JNUT@origmainmatter\def\cleardoublepage\JNUT@origcleardoublepage}
\renewcommand{\floatpagefraction}{0.80}
%% http://qing.blog.sina.com.cn/1661195164/6303d39c33000dor.html
\DeclareCaptionFont{captionfont}{\songti\zihao{5}}
\captionsetup{
  labelfont=captionfont,
  textfont=captionfont,
  labelsep=space
}
\renewcommand{\thefigure}{\thechapter-\arabic{figure}~}
\renewcommand{\thetable}{\thechapter-\arabic{table}~}
%%\def\CTEX@figurename{图}
%%\def\CTEX@tablename{表}
\newcommand\xiaochuhao{\fontsize{32pt}{\baselineskip}\selectfont}
\newcommand\JNUTspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}
\def\JNUT@getfileinfo#1 #2 #3\relax#4\relax{%
  \def\JNUTfiledate{#1}%
  \def\JNUTfileversion{#2}%
  \def\JNUTfileinfo{#3}}%
\expandafter\ifx\csname ver@JNUthesis.cls\endcsname\relax
  \edef\reserved@a{\csname ver@ctextemp_JNUthesis.cls\endcsname}
\else
  \edef\reserved@a{\csname ver@JNUthesis.cls\endcsname}
\fi
\expandafter\JNUT@getfileinfo\reserved@a\relax? ? \relax\relax
\def\JNUT@titleunderline[#1]#2{%
\CTEXunderline{\hbox to #1{#2\hfill}}}
\def\JNUT@schoolunderline[#1]#2{%
\CTEXunderline{\hbox to #1{\hfill#2\hfill}}}
\def\JNUT@infounderline[#1]#2{%
\CTEXunderline{\hbox to #1{\hspace{1em}#2\hfill}}}
\def\JNUTtitleunderline{\@ifnextchar[\JNUT@titleunderline\CTEXunderline}
\def\JNUTschoolunderline{\@ifnextchar[\JNUT@schoolunderline\CTEXunderline}
\def\JNUTinfounderline{\@ifnextchar[\JNUT@infounderline\CTEXunderline}
%%
%% command to fill string values in the title page
%%
\newcommand\degree[1]{\def\JNUT@value@degree{#1}}
\renewcommand\title[2][\JNUT@value@titlefirst]{%
  \def\JNUT@value@titlefirst{#2}
  \def\JNUT@value@titlesecond{}}
\newcommand\titlelinefirst[1]{\def\JNUT@value@titlefirst{#1}}
\newcommand\titlelinesecond[1]{\def\JNUT@value@titlesecond{#1}}
\renewcommand\author[1]{\def\JNUT@value@author{#1}}
\newcommand\studentnum[1]{\def\JNUT@value@studentnum{#1}}
\newcommand\grade[1]{\def\JNUT@value@grade{#1}}
\newcommand\advisor[1]{\def\JNUT@value@advisor{#1}}
\newcommand\advisorpos[1]{\def\JNUT@value@advisorpos{#1}}
\newcommand\advisorsecond[1]{\def\JNUT@value@advisorsecond{#1}}
\newcommand\advisorsecondpos[1]{\def\JNUT@value@advisorsecondpos{#1}}
\newcommand\school[1]{\def\JNUT@value@school{#1}}
\newcommand\major[1]{\def\JNUT@value@major{#1}}
\newcommand\footdateyear[1]{\def\JNUT@value@footdateyear{#1}}
\newcommand\footdatemonth[1]{\def\JNUT@value@footdatemonth{#1}}
\def\JNUT@maketitle[#1]{%
  \thispagestyle{empty}
  \IfEqCase{#1}{%
    {normal}{\pdfbookmark[0]{封面页}{cover}}%
    {related}{%
      \pdfbookmark[0]{相关资料封面页}{cover-related}%
      \clearpage%
      \if@twoside%
        \thispagestyle{empty}%
        \cleardoublepage%
      \fi%
    }%
  }[\PackageError{JNUthesis}{Undefined option to maketitle: #1}{}]%

  \begin{onehalfspace}
    \begingroup
      \songti
      \zihao{-4}
      %% 27em 是估计的值, 原模板此处是首行缩进 10 字符然后居中...
      %% 尼玛这什么排版技巧, wtf
      %% 还有字符间距...
      \setlength{\parindent}{27em}
      \renewcommand{\CJKglue}{\hskip 1.411112mm}
      \textbf{编号}
    \endgroup

    \begin{center}
      \vskip 20mm

      %% 原模板如此, 丑陋啊丑陋... 没有保持纵横比, 不过算了
      \includegraphics[height=2.05cm,width=6.14cm]{jnuname}\\

      \vskip 20mm

      \begingroup
        %% 字符间距, 为何都是如此恶趣味的数字...
        \renewcommand{\CJKglue}{\hskip 0.881945mm}
        \textbf{\songti\xiaochuhao\JNUT@label@thesis}\\
      \endgroup

      \IfEqCase{#1}{%
        {related}{%
          \vskip 5mm%
          \begingroup%
            \renewcommand{\CJKglue}{\hskip 1.058334mm}%
            \textbf{\songti\zihao{1}\JNUT@label@related}%
          \endgroup%
          \vskip 10mm%
        }%
        {normal}{%
          \vskip 20mm%
        }%
      }[\PackageError{JNUthesis}{Undefined option to maketitle: #1}{}]%

      \begingroup
        \zihao{2}
        \begin{tabular}{lc}
          \textbf{\songti\JNUT@label@title} & \JNUTtitleunderline[320pt]{\heiti\JNUT@value@titlefirst}\\
                                            & \JNUTtitleunderline[320pt]{\heiti\JNUT@value@titlesecond}\\
        \end{tabular}
      \endgroup

      \vskip \stretch{1}
      \zihao{-2}

      \begingroup
        %% 我已经承受不来...
        \let\JNUTorigCJKglue=\CJKglue
        \JNUTschoolunderline[180pt]{\heiti\JNUT@value@school}\renewcommand{\CJKglue}{\hskip 1.058334mm}学院~\let\CJKglue=\JNUTorigCJKglue\JNUTschoolunderline[130pt]{\heiti\JNUT@value@major}\renewcommand{\CJKglue}{\hskip 1.058334mm}~专业
      \endgroup

      \vskip 20mm

      \def\tabcolsep{1pt}
      \def\arraystretch{1.5}
      \begin{tabular}{lc}
        \songti\JNUT@label@studentnum & \JNUTinfounderline[220pt]{\heiti\JNUT@value@studentnum}\\
        \songti\JNUT@label@author & \JNUTinfounderline[220pt]{\heiti\JNUT@value@author}\\
        \songti\JNUT@label@advisor & \JNUTinfounderline[220pt]{\heiti\JNUT@value@advisor~\JNUT@value@advisorpos}\\
                                   & \JNUTinfounderline[220pt]{\heiti\JNUT@value@advisorsecond~\JNUT@value@advisorsecondpos}\\
      \end{tabular}%\\

    \vskip 10mm

    \heiti{\JNUT@value@footdateyear}\songti{年}\heiti{\JNUT@value@footdatemonth}\songti{月}
    \end{center}
  \end{onehalfspace}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
\renewcommand\maketitle[1][default]{%
  \IfEqCase{#1}{%
    {default}{\JNUT@maketitle[normal]}%
    {related}{\JNUT@maketitle[related]}%
  }[\PackageError{JNUthesis}{Undefined option to maketitle: #1}{}]%
}
\fancypagestyle{abstract}{%
  \fancyhf{}
  \fancyhead[C]{\songti\zihao{-5}摘要}  %% 不一致: 这里没有中间的全角空格...
  \fancyfoot[C]{\songti\zihao{-5}\thepage}
  \renewcommand{\headrulewidth}{0.5pt}
}
\fancypagestyle{englishabstract}{%
  \fancyhf{}
  \fancyhead[C]{\songti\zihao{-5}Abstract}  %% 不一致: 大小写不同...
  \fancyfoot[C]{\songti\zihao{-5}\thepage}
  \renewcommand{\headrulewidth}{0.5pt}
}
\fancypagestyle{plain}{%
  %% 目录渲染会强制使用 plain 页面风格, 而貌似 \chapter 调用也会重置页面风格...
  %% 于是覆盖 \chapter 命令吧, 这里实在太乱了, 就让 plain 只为目录服务吧...

  \fancyhf{}
  \fancyhead[C]{\songti\zihao{-5}
    目录  %% 两个字之间的全角空格不一致! 脏, 实在是脏... 给这个 kludge 又平添一层蛋疼
  }
  \fancyfoot[C]{\songti\zihao{-5}\thepage}
  %%\renewcommand{\headrulewidth}{\if@mainmatter 0.7pt\else 0pt \fi}
  \renewcommand{\headrulewidth}{0.5pt}
}
\fancypagestyle{main}{%
  \fancyhf{}
  \fancyhead[C]{\songti\zihao{-5}
    \ifthenelse{\isodd{\value{page}}}
    {\JNUT@value@titlefirst\JNUT@value@titlesecond}
    {\JNUT@value@univ\JNUT@value@degree学位论文}
  }
  \fancyfoot[C]{\songti\zihao{-5}\thepage}
  \renewcommand{\headrulewidth}{0.5pt}
}
\fancypagestyle{appendix}{%
  \fancyhf{}
  \fancyhead[C]{\songti\zihao{-5}
    附录  %% 同样的不一致, 不过真的算了...
  }
  \fancyfoot[C]{\songti\zihao{-5}\thepage}
  \renewcommand{\headrulewidth}{0.5pt}
}

%% 改在 .tex 文件里设置了
%%\pagestyle{plain}

\newenvironment{abstract}{
  \pdfbookmark[0]{\JNUT@abs@label@abstract}{abstract}
  \begin{center}
    \textbf{\songti\zihao{3}\JNUT@abs@label@abstract}
  \end{center}
}{}
\newcommand\keywords[1]{\vspace{2ex}\noindent{\textbf{\JNUT@abs@label@keywords}} #1}
\newenvironment{englishabstract}{
  \clearpage
  \pdfbookmark[0]{\JNUT@abs@label@englishabstract}{englishabstract}
  \begin{center}
    \textbf{\zihao{3} \JNUT@abs@label@englishabstract}
  \end{center}
}{}
\newcommand\englishkeywords[1]{%
\vspace{2ex}\noindent{\textbf{\JNUT@abs@label@englishkeywords}} #1}
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi

    %% 因为下面的操作, 需要人工保证 PDF 书签正常...
    \pdfbookmark[0]{\contentsname}{tableofcontents}

    %% 不要让目录列出自己...
    %% \Nchapter{\contentsname}%
    \if@mainmatter
      \@mainmatterfalse%
      \chapter*{\contentsname}%
      \@mainmattertrue%
    \else
      \chapter*{\contentsname}%
    \fi

    \vspace{15mm}

    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    \clearpage
    \if@twoside
      \thispagestyle{empty}
      \cleardoublepage
    \fi
}
\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}
\newcommand\Nchapter[1]{%
  \if@mainmatter%
    \@mainmatterfalse%
    \chapter{#1}%
    \@mainmattertrue%
  \else
    \chapter{#1}%
  \fi}

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
     \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
     \par}%
  \fi}
\renewcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{1.0em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       %% \large \bfseries
       #1
       \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
       \hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
%%  \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \zihao{4}
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode %%\bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak
      \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
      \hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\renewcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \zihao{-4}
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode %%\bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      \hskip 3.7mm
      #1\nobreak
      \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
      \hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\renewcommand*\l@subsection[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \zihao{5}
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode %%\bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      \hskip 7.41mm
      #1\nobreak
      \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
      \hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\renewenvironment{thebibliography}[1]
     {\Nchapter{\bibname}%
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
\renewenvironment{thanks}
  {\Nchapter{\JNUT@label@thanks}}
  {}
\setcounter{secnumdepth}{4}
\newtheoremstyle{break}% name
  {}%      Space above, empty = `usual value'
  {}%      Space below
  {\itshape}% Body font
  {}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {.}%        Punctuation after thm head
  {\newline}% Space after thm head: \newline = linebreak
  {}%         Thm head spec
\endinput
%%
%% End of file `JNUthesis.cls'.
