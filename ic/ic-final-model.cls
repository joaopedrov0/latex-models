\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ic-final-model}[2025/11/13 Modelo de Relatório Final de Iniciação Científica – IFSP]

\LoadClass{article}

% ----------------------------------------------------------------------
% Pacotes obrigatórios
% ----------------------------------------------------------------------

\RequirePackage[a4paper, top=3cm, bottom=2cm, left=3cm, right=2cm]{geometry}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{xcolor}
\RequirePackage{enumitem}
\RequirePackage{helvet}
\RequirePackage[brazil]{babel}
\RequirePackage[alf]{abntex2cite}

% ----------------------------------------------------------------------
% Fonte Arial
% ----------------------------------------------------------------------
\renewcommand{\familydefault}{\sfdefault}

% ----------------------------------------------------------------------
% Espaçamento 1.5
% ----------------------------------------------------------------------
\AtBeginDocument{
    \onehalfspacing
    \pagestyle{empty}
}

% ----------------------------------------------------------------------
% Cores das seções
% ----------------------------------------------------------------------
\definecolor{sectionBg}{RGB}{204, 204, 204}

\newcommand{\sectionBox}[1]{
    \noindent
    \colorbox{sectionBg}{
        \parbox{\dimexpr\linewidth-4\fboxsep\relax}{\MakeUppercase{#1}}
    }
}

% ----------------------------------------------------------------------
% Título customizado
% ----------------------------------------------------------------------
\newcommand{\customTitle}[1]{
    \begin{center}
        {\bfseries\normalsize\MakeUppercase{#1}}
    \end{center}
}

% ----------------------------------------------------------------------
% Formatação das seções
% ----------------------------------------------------------------------
\titleformat{\section}
    [block]
    {\bfseries\normalsize}
    {}
    {0pt}
    {\sectionBox}

% Subsection estilo "run-in" + itálico + dois pontos
\titleformat{\subsection}
    [runin]
    {\bfseries\normalsize\itshape}
    {}
    {0pt}
    {}
    [\normalfont{:}\\]

% ----------------------------------------------------------------------
\endinput
