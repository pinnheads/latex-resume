\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2023/10/22 Custom resume class]
\LoadClass{article}

% Required Packages
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{geometry}
\RequirePackage[strict]{changepage}
\RequirePackage[inline]{enumitem}
\RequirePackage{fontawesome5}
\RequirePackage[pdftex]{hyperref}
\RequirePackage{ragged2e}

\pagestyle{fancy}
% clear all header and footer fields
\fancyhf{}
\fancyfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\raggedbottom
\raggedright
\setlength{\tabcolsep}{0in}
% List formatting
\setlist{noitemsep,partopsep=0pt,leftmargin=2em}
% Ref: https://tex.stackexchange.com/q/476883/16996
\setlist[1]{before={\leavevmode\vspace*{-\baselineskip}\vspace*{-\parskip}}}
\geometry{
  letterpaper,
  top=1.5cm,
  bottom=1.5cm,
  left=2cm,
  right=2cm,
  heightrounded,
%   showframe
}

% Modify section headers
\titleformat{\section}{\Large\scshape\sffamily\raggedright\vspace*{-5pt}}{}{0em}{}[\titlerule]

% Modify subsection headers
\titleformat{\subsection}{\Large\scshape\raggedright\bf}{}{0em}{}

% New custom commands
\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[4]{%
  \vspace{-1pt}\item
    \begin{tabular*}{0.97\textwidth}{l@{\extracolsep{\fill}}r}
      \textbf{\large#1} & #2 \\
      \textit{\small#3} & \textit{\small #4} \\
    \end{tabular*}\vspace{-5pt}
}
\newcommand{\name}[1]{%
    \centerline{\Huge\textbf{#1}\vspace{8pt}}
}
\newcommand{\address}[1]{%
    \faIcon{map-marker} \textbf{Location:} {#1}
}
\newcommand{\phone}[1]{%
    \faIcon{phone-alt} \textbf{Mobile:} {#1}
}
\newcommand{\email}[1]{%
    \faIcon{at} \textbf{Email:} {\href{mailto:#1}{#1}}
}
\newcommand{\github}[1]{%
    \faIcon{github} {\href{#1}{Gtihub}}
}
\newcommand{\website}[1]{%
    \faIcon{globe} {\href{#1}{Website}}
}
\newcommand{\linkedin}[1]{%
    \faIcon{linkedin} {\href{#1}{LinkedIn}}
}
\newcommand{\resumeSubHeadingListStart}{\begin{itemize}[leftmargin=*]}
\newcommand{\resumeSubHeadingListEnd}{\end{itemize}}
\newcommand{\workitems}[3]{%
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}%
}

\newenvironment{summary}{%
  \section{Summary}
  \begin{adjustwidth}{\dimexpr\Gm@rmargin-\Gm@lmargin\relax}{}
  \justify
}{%
  \end{adjustwidth}
}

\newenvironment{contactinfo}{%
  \begin{tabular*}{\columnwidth}{l@{\extracolsep{\fill}}r}
}{
  \end{tabular*}
}
