\NeedsTeXFormat{LaTeX2e}

\ProvidesPackage{tkthesis}[2017/08/15 Nguyen Duc Hieu's thesis style]

\LoadClass[a4paper]{report}

\RequirePackage[fontsize=13pt]{scrextend}
\RequirePackage[utf8]{vietnam}
\RequirePackage{listings}
\RequirePackage{mathptmx}
\RequirePackage{etoolbox}


% \RequirePackage{enumitem}
% Indent first paragraphs after each sections
\RequirePackage{indentfirst}

%%%%%%%%%%%%%%%%%%%
% PAGE FORMATTING %
%%%%%%%%%%%%%%%%%%%

% TODO page layout https://en.wikibooks.org/wiki/LaTeX/Page_Layout
\renewcommand{\baselinestretch}{1.3}
\setlength{\hoffset}{-1in}
\setlength{\voffset}{-1in}
\setlength{\oddsidemargin}{35mm}
\setlength{\topmargin}{15mm}
\setlength{\headheight}{5mm}
\setlength{\headsep}{5mm}
\setlength{\footskip}{10mm}
\setlength{\paperwidth}{210mm}
\setlength{\paperheight}{297mm}
\setlength{\textwidth}{150mm}
\setlength{\textheight}{247mm}

%%%%%%%%%%%%%%%%%%%%%
% HEADER AND FOOTER %
%%%%%%%%%%%%%%%%%%%%%
\patchcmd{\chapter}{\thispagestyle{plain}}{\thispagestyle{fancy}}{}{}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
% \lhead{}
% \chead{\normalsize }            % TODO: add header text alias
% \rhead{}
% \lfoot{}
% \cfoot{\normalsize }            % TODO: add footer text alias
\rfoot{\normalsize Trang \thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

%%%%%%%%%%%%%%%%%%%%%% 
% SECTION FORMATTING %
%%%%%%%%%%%%%%%%%%%%%%


\RequirePackage{titlesec}

\titleformat{\chapter}[display]
  {\centering\Large\bfseries}
  {\MakeUppercase{\chaptertitlename}  \thechapter}{1em}
  {\MakeUppercase}

\titleformat{name=\chapter,numberless}[display]
  {\normalfont\Large\bfseries\filcenter}{}{1ex}
  {\MakeUppercase}[\vspace{1ex}]

\titleformat{\section}[hang]
  {\bfseries}
  {\thesection}{1em}
  {\MakeUppercase}

\titleformat{\subsection}[hang]
  {\bfseries}
  {\thesubsection}{1em}
  {}

\titleformat{\subsubsection}[block]
  {}
  {\thesubsubsection}{1em}
  {}

\titleformat{\paragraph}[block]
  {\hspace{1em}}
  {\theparagraph}{1em}
  {}

% Appearance on table of contents
\RequirePackage{titletoc}
\titlecontents{chapter}% <section-type>
  [0pt]% <left>
  {\bfseries}% <above-code>
  {\color{blue}CHƯƠNG \thecontentslabel:\quad}% <numbered-entry-format>
  {}% <numberless-entry-format>
  {\titlerule*[1pc]{.}\contentspage}% <filler-page-format>



\renewcommand{\thechapter}{\Roman{chapter}}
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\renewcommand{\theparagraph}{\alph{paragraph},}
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}   
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}

%%%%%%%%%%%%%%%%%%%%%% 
% FIGURES AND TABLES %
%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[section]{placeins}
\RequirePackage[justification=centering]{caption}

%%%%%%%%%%%%%%%%%%%
% TOC FORMATTING  %
%%%%%%%%%%%%%%%%%%%

\RequirePackage[colorlinks=true, citecolor=blue, linkcolor=blue]{hyperref}
\RequirePackage[all]{hypcap}
% Customise for table of contents labeling
\setcounter{tocdepth}{2}
\setcounter{secnumdepth}{4}

%%%%%%%%%%%% 
% CITATION %
%%%%%%%%%%%%
% Setting up for citation styles
\RequirePackage[backend=bibtex,sorting=ydnt,style=authoryear]{biblatex}

% Add number to bibliography
\defbibenvironment{bibliography}
  {\enumerate
     {}
     {\setlength{\leftmargin}{\bibhang}
      \setlength{\itemindent}{-\leftmargin}
      \setlength{\itemsep}{\bibitemsep}
      \setlength{\parsep}{\bibparsep}}}
  {\endenumerate}
  {\item}


\endinput
