\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bjtuthesis}[2026/04/22 v0.1 BJTU bachelor thesis template]

\LoadClass[UTF8,zihao=-4,fontset=none,oneside,openany]{ctexbook}

\RequirePackage[
  a4paper,
  left=2.5cm,
  right=2.5cm,
  top=3cm,
  bottom=2.5cm,
  headheight=15pt,
  headsep=0.8cm,
  footskip=1.2cm
]{geometry}
\RequirePackage{graphicx}
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{longtable}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{caption}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage{bookmark}

\IfFontExistsTF{Times New Roman}{
  \setmainfont{Times New Roman}
}{
  \setmainfont{TeX Gyre Termes}
}
\IfFontExistsTF{Arial Unicode MS}{
  \setsansfont{Arial Unicode MS}
}{
  \setsansfont{TeX Gyre Heros}
}
\IfFontExistsTF{Courier New}{
  \setmonofont{Courier New}
}{
  \setmonofont{Latin Modern Mono}
}
\IfFontExistsTF{Songti SC}{
  \setCJKmainfont{Songti SC}
  \setCJKfamilyfont{bjtuSong}{Songti SC}
}{
  \IfFontExistsTF{FandolSong-Regular}{
    \setCJKmainfont{FandolSong-Regular}
    \setCJKfamilyfont{bjtuSong}{FandolSong-Regular}
  }{
    \setCJKmainfont{STSong}
    \setCJKfamilyfont{bjtuSong}{STSong}
  }
}
\IfFontExistsTF{Heiti SC}{
  \setCJKsansfont{Heiti SC}
  \setCJKfamilyfont{bjtuHei}{Heiti SC}
}{
  \IfFontExistsTF{FandolHei-Regular}{
    \setCJKsansfont{FandolHei-Regular}
    \setCJKfamilyfont{bjtuHei}{FandolHei-Regular}
  }{
    \setCJKsansfont{Hiragino Sans GB}
    \setCJKfamilyfont{bjtuHei}{Hiragino Sans GB}
  }
}
\IfFontExistsTF{Songti SC}{
  \setCJKmonofont{Songti SC}
}{
  \IfFontExistsTF{FandolSong-Regular}{
    \setCJKmonofont{FandolSong-Regular}
  }{
    \setCJKmonofont{STSong}
  }
}
\providecommand{\songti}{\CJKfamily{bjtuSong}}
\providecommand{\heiti}{\CJKfamily{bjtuHei}}

\hypersetup{
  hidelinks,
  unicode=true,
  bookmarksnumbered=true,
  pdfcreator={XeLaTeX}
}

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

\setlength{\parindent}{2em}
\setlength{\parskip}{0pt}
\setlength{\headheight}{15pt}

\makeatletter
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12pt}{20pt}%
  \abovedisplayskip 12pt plus 2pt minus 6pt%
  \abovedisplayshortskip \z@ plus 3pt%
  \belowdisplayshortskip 7pt plus 3pt minus 4pt%
  \belowdisplayskip \abovedisplayskip%
  \let\@listi\@listI
}
\makeatother
\normalsize
\renewcommand{\thechapter}{\arabic{chapter}}
\ctexset{
  chapter = {
    name = {},
    number = \arabic{chapter}
  }
}
\makeatletter
\gdef\CTEX@chaptername{}
\gdef\CTEX@chapter@aftername{}
\gdef\CTEXthechapter{\arabic{chapter}}
\makeatother

\makeatletter
\@addtoreset{figure}{chapter}
\@addtoreset{table}{chapter}
\makeatother
\numberwithin{equation}{chapter}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}

\renewcommand{\contentsname}{目\hspace{1em}录}

\DeclareCaptionFont{bjtu}{\songti\zihao{-4}}
\captionsetup{
  font=bjtu,
  labelsep=space
}
\captionsetup[figure]{
  name=图,
  justification=centering,
  singlelinecheck=false
}
\captionsetup[table]{
  name=表,
  position=top,
  justification=centering,
  singlelinecheck=false
}

\titleformat{\chapter}[hang]
  {\raggedright\heiti\zihao{3}\bfseries}
  {\thechapter}
  {1em}
  {}
\titlespacing*{\chapter}{0pt}{24pt}{18pt}

\titleformat{name=\chapter,numberless}[block]
  {\centering\heiti\zihao{3}\bfseries}
  {}
  {0pt}
  {}
\titlespacing*{name=\chapter,numberless}{0pt}{0pt}{24pt}

\titleformat{\section}[hang]
  {\raggedright\heiti\zihao{-3}\bfseries}
  {\thesection}
  {1em}
  {}
\titlespacing*{\section}{0pt}{24pt}{18pt}

\titleformat{\subsection}[hang]
  {\raggedright\heiti\zihao{4}\bfseries}
  {\thesubsection}
  {1em}
  {}
\titlespacing*{\subsection}{0pt}{24pt}{18pt}

\titleformat{\subsubsection}[hang]
  {\raggedright\heiti\zihao{-4}\bfseries}
  {\thesubsubsection}
  {1em}
  {}
\titlespacing*{\subsubsection}{0pt}{18pt}{12pt}

\titlecontents{chapter}
  [0pt]
  {\songti\zihao{-4}}
  {\contentslabel{2.5em}}
  {}
  {\titlerule*[0.6pc]{.}\contentspage}

\titlecontents{section}
  [2.5em]
  {\songti\zihao{-4}}
  {\contentslabel{3.0em}}
  {}
  {\titlerule*[0.6pc]{.}\contentspage}

\titlecontents{subsection}
  [5.5em]
  {\songti\zihao{-4}}
  {\contentslabel{4.0em}}
  {}
  {\titlerule*[0.6pc]{.}\contentspage}

\titlecontents{subsubsection}
  [9.5em]
  {\songti\zihao{-4}}
  {\contentslabel{5.0em}}
  {}
  {\titlerule*[0.6pc]{.}\contentspage}

\makeatletter
\renewcommand*\l@chapter[2]{%
  \begingroup
    \songti\zihao{-4}%
    \@dottedtocline{0}{0em}{2.5em}{#1}{#2}%
  \endgroup
}
\makeatother

\makeatletter
\newcommand{\bjtu@headerlabel}{正文}
\newcommand{\setbjtuheader}[1]{\gdef\bjtu@headerlabel{#1}}
\newcommand{\bjtu@headerfont}{\songti\zihao{-5}}
\newcommand{\bjtu@headertext}{北京交通大学毕业设计（论文）\hfill \bjtu@headerlabel}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{\bjtu@headerfont \bjtu@headertext}
\fancyfoot[C]{\songti\zihao{-5}\thepage}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0pt}

\fancypagestyle{plain}{
  \fancyhf{}
  \fancyhead[C]{\bjtu@headerfont \bjtu@headertext}
  \fancyfoot[C]{\songti\zihao{-5}\thepage}
  \renewcommand{\headrulewidth}{0.5pt}
  \renewcommand{\footrulewidth}{0pt}
}

\fancypagestyle{bjtu-nopage}{
  \fancyhf{}
  \fancyhead[C]{\bjtu@headerfont \bjtu@headertext}
  \renewcommand{\headrulewidth}{0.5pt}
  \renewcommand{\footrulewidth}{0pt}
}

\newcommand{\bjtu@titlecn}{北京交通大学经济管理学院本科毕业论文题目示例}
\newcommand{\bjtu@titleen}{Sample Title}
\newcommand{\bjtu@college}{经济管理学院}
\newcommand{\bjtu@major}{专业名称}
\newcommand{\bjtu@author}{学生姓名}
\newcommand{\bjtu@studentid}{学号}
\newcommand{\bjtu@advisor}{指导教师}
\newcommand{\bjtu@date}{20XX年X月}
\newcommand{\bjtu@coverimage}{assets/bjtu-cover-title.png}
\newcommand{\bjtu@coverimagewidth}{305pt}
\newcommand{\bjtu@coverimageheight}{75.25pt}

\newcommand{\thesistitlecn}[1]{\gdef\bjtu@titlecn{#1}}
\newcommand{\thesistitleen}[1]{\gdef\bjtu@titleen{#1}}
\newcommand{\thesiscollege}[1]{\gdef\bjtu@college{#1}}
\newcommand{\thesismajor}[1]{\gdef\bjtu@major{#1}}
\newcommand{\thesisauthor}[1]{\gdef\bjtu@author{#1}}
\newcommand{\thesisstudentid}[1]{\gdef\bjtu@studentid{#1}}
\newcommand{\thesisadvisor}[1]{\gdef\bjtu@advisor{#1}}
\newcommand{\thesisdate}[1]{\gdef\bjtu@date{#1}}
\newcommand{\thesiscoverimage}[1]{\gdef\bjtu@coverimage{#1}}
\newcommand{\thesiscoverimagewidth}[1]{\gdef\bjtu@coverimagewidth{#1}}
\newcommand{\thesiscoverimageheight}[1]{\gdef\bjtu@coverimageheight{#1}}

\newcommand{\bjtu@uline}[2][9.2cm]{\underline{\makebox[#1][c]{#2}}}
\newcommand{\bjtu@coverfield}[3][5.0cm]{%
  \par\noindent\hspace*{3.73cm}%
  {\songti\fontsize{14pt}{18pt}\selectfont
   \makebox[5.2em][l]{#2}\underline{\makebox[#1][c]{#3}}}%
}
\newcommand{\insertblankpage}{%
  \clearpage
  \thispagestyle{empty}%
  \null
  \clearpage
}

\newcommand{\makecover}{%
  \begin{titlepage}
    \thispagestyle{empty}
    \vspace*{0.82cm}
    \begin{center}
      \IfFileExists{\bjtu@coverimage}{%
        \includegraphics[width=\bjtu@coverimagewidth,height=\bjtu@coverimageheight]{\bjtu@coverimage}\par
      }{}
      \vspace{0.82cm}
      {\songti\bfseries\fontsize{22pt}{24pt}\selectfont 本科毕业论文（设计）\par}
      \vspace{0.95cm}
      {\heiti\bfseries\fontsize{18pt}{22pt}\selectfont
        \parbox{15.5cm}{\centering \bjtu@titlecn}\par}
      \vspace{0.42cm}
      {\bfseries\fontsize{18pt}{20pt}\selectfont
        \parbox{13.1cm}{\centering \bjtu@titleen}\par}
    \end{center}
    \vspace{0.88cm}
    \bjtu@coverfield[5.1cm]{学\hspace{2em}院：}{\bjtu@college}
    \bjtu@coverfield[5.7cm]{专\hspace{2em}业：}{\bjtu@major}
    \bjtu@coverfield[4.6cm]{学生姓名：}{\bjtu@author}
    \bjtu@coverfield[4.9cm]{学\hspace{2em}号：}{\bjtu@studentid}
    \bjtu@coverfield[4.7cm]{指导教师：}{\bjtu@advisor}
    \vspace{0.92cm}
    \begin{center}
      {\songti\bfseries\fontsize{15pt}{18pt}\selectfont 北京交通大学\par}
      \vspace{0.32cm}
      {\songti\fontsize{14pt}{18pt}\selectfont \bjtu@date\par}
    \end{center}
  \end{titlepage}
  \insertblankpage
}

\newcommand{\makeauthorization}{%
  \cleardoublepage
  \setbjtuheader{版权使用授权书}
  \chapter*{学士论文版权使用授权书}
  \thispagestyle{bjtu-nopage}
  本学士论文作者完全了解北京交通大学有关保留、使用学士论文的规定。特授权北京交通大学可以将学士论文的全部或部分内容编入有关数据库进行检索，提供阅览服务，并采用影印、缩印或扫描等复制手段保存、汇编以供查阅和借阅。

  \vspace{1.5\baselineskip}
  \begin{center}
    （保密的学位论文在解密后适用本授权说明）
  \end{center}

  \vspace{4\baselineskip}
  学位论文作者签名：\hspace{5cm}指导教师签名：

  \vspace{2.5\baselineskip}
  签字日期：\hspace{0.8cm}年\hspace{0.8cm}月\hspace{0.8cm}日
  \hfill
  签字日期：\hspace{0.8cm}年\hspace{0.8cm}月\hspace{0.8cm}日
}

\newcommand{\makedeclaration}{%
  \cleardoublepage
  \setbjtuheader{论文诚信声明}
  \chapter*{学士论文诚信声明}
  \thispagestyle{bjtu-nopage}
  本人声明所呈交的毕业论文（设计）是本人在指导教师的指导下，独立进行研究工作所取得的成果。尽我所知，除了文中特别加以标注和致谢中所罗列的内容以外，论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得北京交通大学或其他教育机构的学位或证书而使用过的材料。

  \par
  申请学位论文与资料若有不实之处，本人承担一切相关责任。

  \vspace{4\baselineskip}
  本人签名：\hspace{5cm}日期：\hspace{4cm}
}

\newcommand{\frontmattersetup}{%
  \clearpage
  \pagenumbering{roman}
  \setcounter{page}{1}
}

\newcommand{\mainmattersetup}{%
  \clearpage
  \pagenumbering{arabic}
  \setcounter{page}{1}
  \setbjtuheader{正文}
}

\newcommand{\makebjtutoc}{%
  \cleardoublepage
  \setbjtuheader{目录}
  \phantomsection
  \addcontentsline{toc}{chapter}{目\hspace{1em}录}
  \tableofcontents
}

\newenvironment{cnabstract}{
  \cleardoublepage
  \setbjtuheader{中文摘要}
  \chapter*{中文摘要}
  \addcontentsline{toc}{chapter}{中文摘要}
  \thispagestyle{plain}
}{
  \par
}

\newcommand{\cnkeywords}[1]{%
  \par\vspace{1\baselineskip}
  \noindent\textbf{关键词：}#1
}

\newenvironment{enabstract}{
  \cleardoublepage
  \setbjtuheader{英文摘要}
  \chapter*{ABSTRACT}
  \addcontentsline{toc}{chapter}{ABSTRACT}
  \thispagestyle{plain}
}{
  \par
}

\newcommand{\enkeywords}[1]{%
  \par\vspace{1\baselineskip}
  \noindent\textbf{KEYWORDS:} #1
}

\makeatother
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}
