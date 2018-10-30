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
\def\abr#1{\left\langle#1\right\rangle}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\Q}{\mathbb{Q}}

\def\assignment#1{\gdef\@assignment{#1}}
\def\class#1{\gdef\@class{#1}}

\newenvironment{work}%
{ \renewcommand{\\}{\\ \vspace{5cm}} }%
{ \renewcommand{\linespread}{1} }

% Problem Environments
\newcounter{problem}
\newcounter{subproblem}[problem]
\newcounter{subsubproblem}[subproblem]

\newcommand{\problem}{
    \vspace{0.75cm}
    \refstepcounter{problem}
    \textbf{\Large{Problem \arabic{problem}}}
    \smallbreak}
\newcommand{\subproblem}{
    \bigbreak
    \refstepcounter{subproblem}
    \textbf{\large{Part \alph{subproblem}}}\smallbreak}
\newcommand{\subsubproblem}{
    \medbreak
    \refstepcounter{subsubproblem}
    \textbf{{Part \alph{subproblem}.\roman{subsubproblem}}}\smallbreak}

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
