\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}
\LoadClass[12pt]{extarticle}
\usepackage{siunitx}

\RequirePackage[utf8]{inputenc}
\RequirePackage[utf8]{vietnam}
\RequirePackage[a4paper, top=2.5cm, right=2cm, bottom=3cm, left=3cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{mathptmx}
\RequirePackage{amsmath,amsfonts,amsthm,amssymb}
\RequirePackage{cases}
\RequirePackage{enumitem}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\PassOptionsToPackage{hyphens}{url}
\RequirePackage[unicode]{hyperref}
\RequirePackage{titlesec}
\RequirePackage{xurl}
\RequirePackage{longtable}
\RequirePackage{tabularx}
\RequirePackage{xcolor}
\RequirePackage{multirow}
\RequirePackage{booktabs}
\RequirePackage{tocloft}
\RequirePackage{indentfirst}
\RequirePackage{placeins}
\RequirePackage{caption}
\RequirePackage{tikz}
\RequirePackage{minted}
\RequirePackage[fontsize=13pt]{scrextend}
% \RequirePackage{biblatex}
% \addbibresource{references.bib}

\usetikzlibrary{calc}

\renewcommand{\cfttoctitlefont}{\hspace*{\fill}\bf\Large}
\renewcommand{\cftaftertoctitle}{\hspace*{\fill}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

\renewcommand{\cftlottitlefont}{\hspace*{\fill}\bf\Large}
\renewcommand{\cftafterlottitle}{\hspace*{\fill}}

\renewcommand{\cftloftitlefont}{\hspace*{\fill}\bf\Large}
\renewcommand{\cftafterloftitle}{\hspace*{\fill}}

\newcommand\customtoc{
    \newpage
    \renewcommand*{\contentsname}{\fontsize{14pt}{16pt}\selectfont MỤC LỤC}
    % \addcontentsline{toc}{section}{{\bf MỤC LỤC\rm }}
    \tableofcontents
}

\newcommand\customlistoffigures{
    \renewcommand*{\listfigurename}{\fontsize{14pt}{16pt}\bfseries DANH MỤC CÁC HÌNH}
    %\addcontentsline{toc}{section}{{\bf DANH MỤC CÁC HÌNH\rm }}

    {% Thêm chữ hình vẽ
        \let\oldnumberline\numberline%
        \renewcommand{\numberline}{Hình~\oldnumberline}%
        \listoffigures%
    }
}

\newcommand\customlistoftables{
    \renewcommand*{\listtablename}{\fontsize{14pt}{16pt}\bfseries DANH MỤC CÁC BẢNG}
    %\addcontentsline{toc}{section}{{\bf DANH MỤC CÁC BẢNG\rm }}

    {
        \let\oldnumberline\numberline%
        \renewcommand{\numberline}{Bảng~\oldnumberline}%
        \listoftables%
    }
}

% \newcommand\custombib{

%     % \chapter*{Bibliography}%
%     \addcontentsline{toc}{section}{{\bf TÀI LIỆU THAM KHẢO}}

%     % \titleformat{\chapter}{\bfseries  \large}{CHAPTER \thechapter. }{}{}[]
%     % \titlespacing{\chapter}{0.1em}{0.1em}{1.1em}

%     % \bibliographystyle{ieeetran}
%     % \bibliographystyle{unsrt}
%     % \printbibliography[keyword={Vietnam},heading=subbibliography,title={Vietnamese:}]
%     \printbibliography[title={TÀI LIỆU THAM KHẢO}] % [heading=subbibliography] % ,title={English:}
% }


\titleformat*{\section}{\fontsize{14pt}{16pt}\selectfont\centering\bfseries}

\titleformat{\section}{\bf\large\centering}{CHƯƠNG \thesection.}{10pt}{}

% \titlespacing*{<command>}{<left>}{<before-sep>}{<after-sep>}
\titlespacing*{\subsection}{0pt}{0pt}{0pt}
\titlespacing*{\subsubsection}{0pt}{0pt}{0pt}
\addtolength\cftsecnumwidth{4.5em}
\renewcommand\cftsecpresnum{CHƯƠNG~}
\newcommand{\bfit}[1]{{\fontshape{\itdefault}\fontseries{\bfdefault}\selectfont #1}}

\setlength{\parindent}{1cm}
\setstretch{1.3}
\setlength{\parskip}{6pt}

\counterwithin{figure}{section}
\captionsetup[figure]{name={Hình },font={small,it}, labelsep={period}}
\captionsetup[table]{name={Bảng },font={small,it}, labelsep={period}}

\newcolumntype{Y}{>{\centering\arraybackslash}X}