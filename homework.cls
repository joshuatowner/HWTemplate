% Core
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[v1.0]
\LoadClass{article}

% Load common packages
\RequirePackage[margin=1in]{geometry}
\RequirePackage{siunitx}
\RequirePackage{tikz}
\RequirePackage{pgfplots}
\RequirePackage{fancyhdr}
\RequirePackage{setspace}
\RequirePackage{amsmath,amsthm,amssymb}
\RequirePackage{mathtools}
\everymath{\displaystyle}


% Commands
\DeclarePairedDelimiterX\set[1]\lbrace\rbrace{\def\given{\;\delimsize\vert\;}#1}
\def\abs#1{\left\lvert#1\right\rvert}
\def\prn#1{\left(#1\right)}
\def\sbr#1{\left\lbrack#1\right\rbrack}
\def\abr#1{\left\langle#1\right\rangle}
\def\vb#1{\mathbf{#1}}
\def\norm#1{\left\|{#1}\right\|}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\I}{\mathbb{I}}
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}
\DeclarePairedDelimiter\ceil{\lceil}{\rceil}
\DeclarePairedDelimiter\floor{\lfloor}{\rfloor}

\def\assignment#1{\gdef\@assignment{#1}}
\def\class#1{\gdef\@class{#1}}

\newenvironment{work}%
{ \renewcommand{\\}{\\ \vspace{5cm}} }%
{ \renewcommand{\linespread}{1} }

\newenvironment{amatrix}[1]{%
  \left(\begin{array}{@{}*{#1}{c}|c@{}}
}{%
  \end{array}\right)
}

% Problem Environments
\newcounter{problem}
\newcounter{subproblem}[problem]
\newcounter{subsubproblem}[subproblem]

\newcommand{\problem}[1][\arabic{problem}]{
    \pagebreak
    \vspace{0.75cm}
    \refstepcounter{problem}
    \textbf{\Large{Problem #1}}
    \smallbreak}
\newcommand{\subproblem}[1][\alph{subproblem}]{
    \bigbreak
    \refstepcounter{subproblem}
    \textbf{\large{Part #1}}\smallbreak}
\newcommand{\subsubproblem}[1][\alph{subproblem}.\roman{subsubproblem}]{
    \medbreak
    \refstepcounter{subsubproblem}
    \textbf{{Part #1}}\smallbreak}

\newtheorem{theorem}{Theorem}[problem]
\newtheorem{corollary}{Corollary}[theorem]
\newtheorem{lemma}[theorem]{Lemma}

% Styling
\setlength\parindent{0pt}
\pagestyle{fancy}
\fancyhf{}
\lhead{Joshua Towner}
\chead{\@class: \@assignment}
\rhead{\thepage}
\renewcommand*{\arraystretch}{1.5}

% Settings
\pgfplotsset{compat=1.16}

% Options
\DeclareOption{compact}{
  \renewcommand{\problem}[1][\arabic{problem}]{
    \vspace{0.75cm}
    \refstepcounter{problem}
    \textbf{\Large{Problem #1}}
    \smallbreak}
}
\ProcessOptions\relax
