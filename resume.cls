\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2023/10/22 Custom resume class]
\LoadClass[letterpaper,11pt]{article}

% Required Packages
\RequirePackage{titlesec}

% Modify section headers
\titleformat{\section}{\Large\scshape\sffamily\raggedright\bfseries}{}{0em}{}[\titlerule]

% Modify subsection headers
\titleformat{\subsection}{\Large\scshape\raggedright}{}{0em}{}

% New custom commands
\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}
\newcommand{\name}[1]{%
    \centerline{\Huge{#1}}
}
\newcommand\contact[5]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
            \ #4 \ \ #5%
        }%
    }%
}
\newcommand{\longcontact}[5]{%
    \noindent
    #1\hfill {\large\textperiodcentered}\hfill #2\hfill
    {\large\textperiodcentered}\hfill #3\\
    #4\hfill #5%
}
\newcommand{\workitems}[3]{%
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}%
}