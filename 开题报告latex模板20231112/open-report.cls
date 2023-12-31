

%%% This project is made by BoWang (School of Automation, HDU)
%%%  bowang1988@163.com    2023.3.13

\ProvidesClass{open-report}

\newif\ifbachelorp\bachelorpfalse
\newif\ifmasterp\masterpfalse
\newif\ifdoctorp\doctorpfalse
\newif\ifcoursep\coursepfalse


\DeclareOption{bachelor_p}{\bachelorptrue}
\DeclareOption{master_p}{\masterptrue}
\DeclareOption{doctor_p}{\doctorptrue}
\DeclareOption{course_p}{\courseptrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[12pt, openany, twoside]{article}%小四号 12pt
\RequirePackage[left=3cm,right=2.5cm,top=2.5cm,bottom=2.5cm,asymmetric,
bindingoffset=0cm]{geometry}
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\hypersetup{
  colorlinks=true,
  citecolor=black,
  bookmarksnumbered=true,
  linkcolor=black,
  urlcolor=black
}

\RequirePackage{indentfirst}
\RequirePackage{xeCJK}
\RequirePackage{tikz}%%%%%%%绘图宏包
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage[comma,numbers,square,sort&compress]{natbib}
\RequirePackage{paralist}
\RequirePackage{bm}
\RequirePackage{url}
\RequirePackage{graphicx}
\usepackage{subfigure} 
\RequirePackage{dcolumn} %%%%%%列表对齐
\RequirePackage{bbding}%%%%%%%%%%五角星
\RequirePackage{ifthen}
\RequirePackage{multirow}
\RequirePackage{zhnumber}
\RequirePackage{appendix}
\RequirePackage[normalem]{ulem}
\RequirePackage{enumitem}
\RequirePackage{anyfontsize}%%%%%%保证不同尺寸的pt

\RequirePackage{algorithm2e}
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{bookmark}
\RequirePackage{fancyvrb}%%%定义页眉页脚
\RequirePackage{fancyhdr}
\RequirePackage[marginal,perpage]{footmisc}
\RequirePackage{pifont}
\RequirePackage{etoolbox}
\RequirePackage{setspace}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\InputIfFileExists{open-report.cfg}

%%%%%%%%%%%%%%%%字体设置%%%%%%%%%%%%%%%%%

\RequirePackage{ifplatform}

\ifwindows
  \setCJKmainfont[AutoFakeBold=true]{SimSun}
  \newCJKfontfamily{\heiti}{SimHei}
  \newCJKfontfamily{\kaiti}[AutoFakeBold=true]{KaiTi}
  \newCJKfontfamily{\youyuan}[AutoFakeBold=true]{YouYuan}
  \newfontfamily{\heiti@letter}{SimHei}
  
\else
\ifmacosx
  \setCJKmainfont[AutoFakeBold=true]{Songti SC}
  \newCJKfontfamily{\heiti}{STHeiti}
  \newCJKfontfamily{\kaiti}[AutoFakeBold=true]{STKaiti}
  \newCJKfontfamily{\youyuan}[AutoFakeBold=true]{YouYuan}
  \newCJKfontfamily{\Fangsong}{STFangsong}
  \newfontfamily{\heiti@letter}{STHeiti}
\else
  \setCJKmainfont[AutoFakeBold=true]{fzsong.ttf}
  \newCJKfontfamily{\heiti}{fzhei.ttf}
  \newCJKfontfamily{\kaiti}[AutoFakeBold=true]{fzkai.ttf}
  \newfontfamily{\heiti@letter}{fzhei.ttf}
\fi
\fi

\setmainfont{Times New Roman}% 英文默认Time New Roman
%

\newcommand{\chuhao}{\fontsize{42pt}{42pt}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{36pt}\selectfont}
\newcommand{\dayihao}{\fontsize{28pt}{28pt}\selectfont}
\newcommand{\yihao}{\fontsize{26pt}{26pt}\selectfont}
\newcommand{\xiaoyihao}{\fontsize{24pt}{24pt}\selectfont}
\newcommand{\erhao}{\fontsize{22pt}{22pt}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{18pt}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{15.75pt}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}{15pt}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{19.7pt}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{14.4pt}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{10.5pt}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{9pt}\selectfont}
\newcommand{\liuhao}{\fontsize{7.5pt}{7.5pt}\selectfont}
\newcommand{\littlesixw}{\fontsize{7pt}{7pt}\selectfont}
\newcommand{\littlesixb}{\fontsize{6.8pt}{6.8pt}\selectfont}
\newcommand{\xiaoliuhao}{\fontsize{6.5pt}{6.5pt}\selectfont}
\newcommand{\qihao}{\fontsize{5.5pt}{5.5pt}\selectfont}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\mm@space{\phantom{mm}}
\newcommand\yim@space{\phantom{一m}}
\newcommand\yiyi@space{\phantom{一一}}
%%%%%%%%%%%%%%%%%%%%%%%颜色设置%%%%%%%%%%
% \definecolor{skyblue}{HTML}{0070C0}
% \newcommand{\SBlue}{\color{skyblue}}
% %%%%%%%%%%%%%%%%%%%%%%%插入图片%%%%%%%%%%%%%%%%%%%%%%%%
\graphicspath{{./pic/}}
%%%%%%%%%%%%%%%需要用到的命令%%%%%%%%%%%%%

%%%%%%%%%%%%%%节字号设置%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{\section}[block]
  {\sihao\bfseries}%%%%%%%%字体
  {\thesection}{7pt}{}%%%%%%%%%%%标号与文字间距

\titleformat{\subsection}[block]
  {\xiaosihao\bfseries}%%%%
  {\thesubsection}{7pt}{}

\titleformat{\subsubsection}[block]
  {\xiaosihao\bfseries}%%%%
  {\thesubsection}{7pt}{}
%%%%%%%%%%%%%%%%%%%%%%%%%标题格式设置%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titlespacing{\section}{0pt}{7pt}{6pt}%%%由于1.5倍行距需要增大距离
\titlespacing{\subsection}{0pt}{2pt}{2pt}
\titlespacing{\subsubsection}{0pt}{0pt}{0pt}


% %%%%%%%%%%%%%定理环境设计%%%%%%%%%
\newtheorem{theorem}{定理}
\newtheorem{axiom}[theorem]{公理}
\newtheorem{corollary}[theorem]{推论}
\newtheorem{lemma}[theorem]{引理}
\newtheorem{definition}[theorem]{定义}
\newtheorem{example}[theorem]{举例}
\newtheorem{proposition}[theorem]{命题}
\newtheorem{problem}[theorem]{问题}
\newtheorem{assumption}[theorem]{假设}
\renewcommand{\proofname}{\bfseries 证明}



%%%%%%%%%%%%%%%%英文的标号变成中文%%%%%%%%%%%
\renewcommand{\refname}{  }%%%%%默认是英文
\renewcommand{\figurename}{图}%%%默认是英文
\renewcommand{\tablename}{表}%%%默认是英文
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%参考文献设置%%%%%%%%%%%%%%%%%%%
\renewcommand{\citep}[1]{\textsuperscript{\cite{#1}}}
\newcommand{\hdubibliography}[1]{
\begin{spacing}{1.25}
  \bibliographystyle{open-report}
  \bibliography{#1}
\end{spacing}}
\setlength{\bibsep}{0em}%%%%%%%调整间距
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%其它设置%%%%%%%%%%%%%%
\setlength\parindent{2em}    %首行缩进
\XeTeXlinebreaklocale "zh"   %中文断行
\pagestyle{empty}%无页码
\setcounter{secnumdepth}{-7} %用于手动编号
%%%%%%%%字号与行距设置%%%%%%%%%%%%
%%%正文中行间距固定20磅 12*1.3*1.28=20pt
%%%%为保证四号标题行距为word中1.5倍,1.5*1.2*14/1.28=18pt需要修改四号字14pt的基本行距为19.7pt
\linespread{1.28}






%%%%%%%%%%%空白页设置%%%%%%%%%%%
\newcommand\coverblankpage{%
  \newpage
  \null
  \thispagestyle{empty}%当前页不显示页码
  \setcounter{page}{0}
  \newpage
}
\newcommand\blankpage{%
  \newpage
  \null
  \thispagestyle{empty}%当前页不显示页码
  %\stepcounter{pseudopage}
  \newpage
}




\newcommand{\makecover}{
%%%%%%%%%%
\ifbachelorp
\thetitlepage@bachelor@proposal
\else \ifcoursep
\thetitlepage@labreport
\else 
\thetitlepage@master@proposal
\fi
\fi
}




