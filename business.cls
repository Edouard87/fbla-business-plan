\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{business}[02/05/2021 A class to format the FBLA submission]
\LoadClass[letter]{article}
\RequirePackage{graphicx}

\newcommand{\business}[1]{\gdef\@business{#1}}
\newcommand{\names}[1]{\gdef\@names{#1}}
\newcommand{\school}[1]{\gdef\@school{#1}}
\newcommand{\eventyear}[1]{\gdef\@eventyear{#1}}
\newcommand{\city}[1]{\gdef\@city{#1}}
\newcommand{\event}[1]{\gdef\@event{#1}}
\newcommand{\logo}[1]{\gdef\@logo{#1}}
\newcommand{\logoscale}[1]{\gdef\@logoscale{#1}}

\renewcommand{\maketitle}{
    \begin{titlepage}
        \centering
        \begin{minipage}{0.7\textwidth}
           \centering
            % Hello
            \Huge{\bf\@business\par}
            \vspace{0.5cm}
            \LARGE{A business plan by \\ \bf\emph\@names\par}
            \vspace{0.5cm}
            \Large{Students at \@school~in \@city\par}
            \vspace{0.5cm}
            \large{\@event\par}
            \vspace{0.5cm}
            \large{\@eventyear\par}
        \end{minipage}
        \vfill
        \includegraphics[scale=\@logoscale]{\@logo}
    \end{titlepage}
}