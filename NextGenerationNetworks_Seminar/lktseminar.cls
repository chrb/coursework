%% LaTeX2e class for seminar at LKT
%% Based on DE-TeX-FAQ's modified ''article.cls''
%% 
%%
%% Adapted by: Dario Fanucchi, 2012
%% dario.fanucchi@informatik.uni-augsburg.de
%%



\NeedsTeXFormat{LaTeX2e} \relax
\ProvidesClass{lktseminar} [2012/03/27 Class for seminar at LKT]

%% Lade nun ``scrartcl.cls'', wobei als Default-Optionen ``12pt'' und
%% A4-Papierformat als Default gesetzt werden (fuer diese muss explizit
%% eine Deklaration hier vorhanden sein) und alle weiteren vom Autor
%% gegebenen Optionen einfach `durchgereicht' werden:
\DeclareOption{a4paper}{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\DeclareOption{12pt}{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\DeclareOption{oneside}{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ExecuteOptions{a4paper,12pt,oneside}
\ProcessOptions\relax
\LoadClass{scrartcl}


%% -------------------------------
%% |          Packages           |
%% -------------------------------
% Eingabekodierung
\RequirePackage[latin1, utf8, ansinew]{inputenc}

% Bilder
\RequirePackage{graphicx}

%  Trennung und Uebersetzung von generierten Inhalten
\RequirePackage[ngerman, english]{babel}

\RequirePackage[babel, german=quotes]{csquotes}
% Anpassung von Kopfzeilen
\RequirePackage{fancyhdr}

%
\RequirePackage{hyperref}       % Querverweise und Metadaten in der PDF-Datei
                                % Sollte immer als letztes geladen werden!
%% --- End of Packages ---



%% -------------------------------
%% |        Provide Options         |
%% -------------------------------
%
% 	Zum Erweiterung des Class
%
%% --- End of Declarations ---


%\makeatletter
%% -------------------------------
%% |         New commands        |
%% -------------------------------
% Informations 
\newcommand{\myname}[1]{\newcommand{\author@lkt}{#1}}
\newcommand{\mymatnr}[1]{\newcommand{\matrnr@lkt}{#1}}
\newcommand{\mystudycourse}[1]{\newcommand{\studycourse@lkt}{#1}}
\newcommand{\mytitle}[1]{\newcommand{\title@lkt}{#1}}
\newcommand{\myshorttitle}[1]{\newcommand{\shorttitle@lkt}{#1}}
\newcommand{\myreviewer}[1]{\newcommand{\reviewer@lkt}{#1}}
% with translation
\newcommand{\uniname}{ %
	\iflanguage{ngerman}{Universi\"at Augsburg}{University of Augsburg}
	}
\newcommand{\departmentname}{%
	\iflanguage{ngerman}{Institut f\"ur Informatik}{Department of Computer Science}
	}
\newcommand{\lktname}{ %
	\iflanguage{ngerman}{Lehrst\"uhl f\"ur Kommunikationssysteme}{Chair for Communication Systems}
	}
% for titlepage
\newcommand{\makeAuthor}{\author{Student:\\\author@lkt \\ \matrnr@lkt \\ \studycourse@lkt}}
\newcommand{\makeTitle}{\title{\title@lkt}}
\newcommand{\makeInfos}{\subject{Seminar \\ Next Generation Networks} \publishers{\iflanguage{ngerman}{Betreuer:\\}{Reviewer:\\} \reviewer@lkt} \date{}}
%
% with translation
%% --- End of New Commands ---

%% -------------------------------
%% |        Translation         |
%% -------------------------------
%% --- End of Translation ---


%% -------------------------------
%% |      Globale Settings       |
%% -------------------------------
%% --- End of global Settings ---

%% -------------------------------
%% |          Headings           |
%% -------------------------------
\pagestyle{fancy}
%\fancyhead[LE,CE,RE]{\empty}
\fancyhead[LO]{\author@lkt}
\fancyhead[CO]{\empty}
\fancyhead[RO]{\shorttitle@lkt}
%% --- End of Headings ---
%\makeatother


%% -------------------------------
%% |    Heading of Titelpage     |
%% -------------------------------
\titlehead{
  \parbox{7cm}{
  	\begin{flushleft}
  		\vspace{1ex}
  	    Prof. Dr.-Ing. Rudi Knorr\vspace{1ex}\\
  		\lktname \\
  		\departmentname\vspace{0.5ex}\\
  		\uniname \\
  	\end{flushleft}
	}
  \hfill
  \parbox{2.4cm}{
  \includegraphics[width=2cm]{./images/unilogo.pdf}
  }

	

}
%% --- End of Headings of Titlepage ---


 %% Schliesslich wird die Klassendatei `sauber' beendet':
 \endinput
 %% End of ``detexfaq.cls''
