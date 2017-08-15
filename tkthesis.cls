\NeedsTeXFormat{LaTeX2e}

\ProvidesPackage{tkthesis}[2017/08/15 Nguyen Duc Hieu's thesis style]

\LoadClass[a4paper]{report}

\RequirePackage[fontsize=13pt]{scrextend}
\RequirePackage[utf8]{vietnam}
\RequirePackage{verbatim}
\RequirePackage{listings}

%%%%%%%%%%%%%%%%%%%%%%%%% 
% TITLE PAGE FORMATTING %
%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{afterpage}
\RequirePackage{xcolor}
\RequirePackage{graphicx}

%%%%%%%%%%%%%%%%%%%%%%%%
% PARAGRAPH FORMATTING %
%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{enumitem}
% Indent first paragraphs after each sections
\RequirePackage{indentfirst}

% Document formatting
\RequirePackage{mathptmx}
\renewcommand{\baselinestretch}{1.3}

% \RequirePackage{geometry}

% \geometry{
%   top=25mm,
%   left=35mm,
%   bottom=25mm,
%   right=25mm
% }

%%%%%%%%%%%%%%%%%%%%%
% HEADER AND FOOTER %
%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{etoolbox}
\patchcmd{\chapter}{\thispagestyle{plain}}{\thispagestyle{fancy}}{}{}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\lhead{}
\chead{\normalsize }            % TODO: add header text alias
\rhead{}
\lfoot{}
\cfoot{\normalsize }            % TODO: add footer text alias
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

\RequirePackage{graphicx}
\RequirePackage[section]{placeins}
\RequirePackage[justification=centering]{caption}

%%%%%%%%%%%%%%%%%%%
% TOC FORMATTING  %
%%%%%%%%%%%%%%%%%%%
% \RequirePackage{tocloft}
% \renewcommand{\cftchappresnum}{\MakeUppercase\chaptername\ }
% % \renewcommand{\cftchapaftersnum}{          }
% % \renewcommand{\cftchapaftersnumb}{\newline}
% \renewcommand{\cftchapdotsep}{\cftdotsep}
% Package hyperref should be loaded last, as it rewrites many commands.
% \RequirePackage{tocloft}
\RequirePackage[colorlinks=true, citecolor=blue, linkcolor=blue]{hyperref}
\RequirePackage[all]{hypcap}
% Customise for table of contents labeling
\setcounter{tocdepth}{2}
\setcounter{secnumdepth}{4}

%%%%%%%%%%%% 
% CITATION %
%%%%%%%%%%%%
% Setting up for citation styles
% \RequirePackage{natbib}
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