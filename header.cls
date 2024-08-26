%% TEMPLETE WRITER: SAY OL  %%
%% EMAIL: say_ol@yahoo.com  %%
%% WEBSITE: khtug.blogspot.com  %%
%% PERSONAL BLOG: bunnybookshelf.blogspot.com  %%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{header}[2019/02/04]
\LoadClassWithOptions{book}
% geometry
\RequirePackage{geometry}
\geometry{%
	left=1cm,%
	right=1cm,%
	top=1.5cm,%
	bottom=1.5cm,%
	bindingoffset=0.8cm}
% math font
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{newpxmath}
% language
\RequirePackage[no-math]{fontspec}% no math font
\setmainfont[Ligatures=TeX,AutoFakeBold=0.5,AutoFakeSlant=0.25]{Khmer OS}% roman font
\setsansfont[Ligatures=TeX,AutoFakeBold=0,AutoFakeSlant=0.25]{Khmer OS Bokor}% sans serif font
\setmonofont[Ligatures=TeX,AutoFakeBold=0.5,AutoFakeSlant=0.25]{Khmer OS}% typewriter font
\XeTeXlinebreaklocale "km"% line break rule
\XeTeXlinebreakskip = 0pt plus 1pt minus 0.5pt% line break skip
% khmer number
\def\khmer#1{\expandafter\@khmer\csname c@#1\endcsname}
\def\@khmer#1{\expandafter\@@khmer\number#1\@nil}
\def\@@khmer#1{%
	\ifx#1\@nil% terminate when encounter @nil
	\else%
	  \ifcase#1 ០\or ១\or ២\or ៣\or ៤\or ៥\or ៦\or ៧\or ៨\or ៩\fi%
	  \expandafter\@@khmer% recursively map the following characters
	\fi}
\def\khmernumeral#1{\@@khmer#1\@nil}
% khmer alphabet
\def\alpkh#1{\expandafter\@alpkh\csname c@#1\endcsname}
\def\@alpkh#1{%
	\ifcase#1% zero -> none
	  \or ក\or ខ\or គ\or ឃ\or ង%
	  \or ច\or ឆ\or ជ\or ឈ\or ញ%
	  \or ដ\or ឋ\or ឌ\or ឍ\or ណ%
	  \or ត\or ថ\or ទ\or ធ\or ន%
	  \or ប\or ផ\or ព\or ភ\or ម%
	  \or យ\or រ\or ល\or វ\or ស%
	  \or ហ\or ឡ\or អ%
	\else%
	  \@ctrerr% otherwise, counter error!
	\fi}
%
\def\khmershortdate{%
	\ifnum\day<10\@khmer{0\day}\else\@khmer\day\fi%
	/\@khmer\month%
	/\@khmer\year}
\def\khmerdate{%
	\ifnum\day<10\@khmer{0\day}\else\@khmer\day\fi~%
	\ifcase\month\or%
	មករា\or%
	កុម្ភៈ\or%
	មិនា\or%
	មេសា\or%
	ឧសភា\or%
	មិថុនា\or%
	កក្កដា\or%
	សីហា\or%
	កញ្ញា\or%
	តុលា\or%
	វិច្ឆិកា\or%
	ធ្នូ\fi~%
	\@khmer\year}
% color
\RequirePackage[table]{xcolor}
\DeclareOption{black}{%
	\colorlet{header}{black}
	\colorlet{blue}{black}
	\colorlet{brown}{black}
	\colorlet{cyan}{black}
	\colorlet{darkgray}{black}
	\colorlet{gray}{black}
	\colorlet{green}{black}
	\colorlet{lime}{black}
	\colorlet{magenta}{black}
	\colorlet{olive}{black}
	\colorlet{orange}{black}
	\colorlet{pink}{black}
	\colorlet{purple}{black}
	\colorlet{red}{black}
	\colorlet{teal}{black}
	\colorlet{violet}{black}
	\colorlet{yellow}{black}
}
\DeclareOption{blue}{\colorlet{header}{blue}}
\DeclareOption{brown}{\colorlet{header}{brown}}
\DeclareOption{cyan}{\colorlet{header}{cyan}}
\DeclareOption{darkgray}{\colorlet{header}{darkgray}}
\DeclareOption{gray}{\colorlet{header}{gray}}
\DeclareOption{green}{\colorlet{header}{green}}
\DeclareOption{lime}{\colorlet{header}{lime}}
\DeclareOption{magenta}{\colorlet{header}{magenta}}
\DeclareOption{olive}{\colorlet{header}{olive}}
\DeclareOption{orange}{\colorlet{header}{orange}}
\DeclareOption{pink}{\colorlet{header}{pink}}
\DeclareOption{purple}{\colorlet{header}{purple}}
\DeclareOption{red}{\colorlet{header}{red}}
\DeclareOption{teal}{\colorlet{header}{teal}}
\DeclareOption{violet}{\colorlet{header}{violet}}
\DeclareOption{yellow}{\colorlet{header}{yellow!45!red}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ExecuteOptions{magenta}
\ProcessOptions\relax
% floating object
\RequirePackage{float}
% graphic
\RequirePackage{graphicx}
% table
\RequirePackage{colortbl}
\arrayrulecolor{header}
% picture
\RequirePackage{tikz}
\usetikzlibrary{shapes}
\usetikzlibrary{calc}
\usetikzlibrary{angles}
\usetikzlibrary{quotes}
\usetikzlibrary{arrows.meta}
\tikzset{%
	every picture/.style={%
		line width=1pt,%
		fill=header,%
		draw=header,%
		text=blue,%
	},%
	>={Stealth[length=6pt,inset=2pt]}%
}
%
\RequirePackage[many]{tcolorbox}
\tcbset{
	breakable,
	enhanced,
    nobeforeafter,
	boxsep=1pt,
    colback=header!12!white,
    colframe=header,
    colbacktitle=header,
    fonttitle=\small,
	attach boxed title to top left={%
        xshift=0.25cm,
        yshift=-\tcboxedtitleheight/2,%
        yshifttext=-\tcboxedtitleheight/4},
    boxed title style={colback=header,boxsep=0pt,arc=0.25cm}
}
\newtcolorbox{definition}[1][និយមន័យ]{
    title={#1},
    colframe=header,
    colback=header!12!white,
    attach boxed title to top left={%
        xshift=.25cm,
        yshift=-\tcboxedtitleheight/2,%
        yshifttext=-\tcboxedtitleheight/4},
    boxed title style={arc=.2cm,colback=header}
}
\newtcolorbox{theorem}[1][ទ្រឹស្ដីបទ]{
    title={#1},
    colframe=blue,
    colback=blue!12!white,
    attach boxed title to top left={%
        xshift=.25cm,
        yshift=-\tcboxedtitleheight/2,%
        yshifttext=-\tcboxedtitleheight/4},
    boxed title style={arc=.27cm,colback=blue}
}
\newtcolorbox{example}[1][ឧទាហរណ៍]{
    title={#1},
    colframe=cyan,
    colback=cyan!12!white,
    attach boxed title to top left={%
        xshift=.25cm,
        yshift=-\tcboxedtitleheight/2,%
        yshifttext=-\tcboxedtitleheight/4},
    boxed title style={arc=.2cm,colback=cyan}
}
\newtcolorbox{exercise}[1][លំហាត់]{
    title={#1},
    colframe=red,
    colback=red!12!white,
    attach boxed title to top left={%
        xshift=.25cm,
        yshift=-\tcboxedtitleheight/2,%
        yshifttext=-\tcboxedtitleheight/4},
    boxed title style={arc=.2cm,colback=red}
}
\newtcolorbox{generality}[1][ជាទូទៅ]{
    title={#1},
    colframe=violet,
    colback=violet!12!white,
    attach boxed title to top left={%
        xshift=.25cm,
        yshift=-\tcboxedtitleheight/2,%
        yshifttext=-\tcboxedtitleheight/4},
    boxed title style={arc=.25cm,colback=violet}
}
\newtcolorbox{property}[1][លក្ខណៈ]{
    title={#1},
    colframe=teal,
    colback=teal!12!white,
    attach boxed title to top left={%
        xshift=.25cm,
        yshift=-\tcboxedtitleheight/2,%
        yshifttext=-\tcboxedtitleheight/4},
    boxed title style={arc=.2cm,colback=teal}
}
\newtcolorbox{remark}[1][សម្គាល់]{
    title={#1},
    colframe=yellow!50!orange,
    colback=yellow!12!white,
    attach boxed title to top left={%
        xshift=.25cm,
        yshift=-\tcboxedtitleheight/2,%
        yshifttext=-\tcboxedtitleheight/4},
    boxed title style={arc=.25cm,colback=yellow!50!orange}
}
\let\emph\relax
\DeclareTextFontCommand{\emph}{\color{header}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sections format
\def\thechapter{\khmer{chapter}}
\def\thesection{\khmer{section}}
\def\thesubsection{\thesection.\khmer{subsection}}
\def\theequation{\arabic{equation}}
\def\thepage{\textsf{\khmer{page}}}
\def\@seccntformat#1{\csname the#1\endcsname}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% table of contents
% chapter
\def\l@chapter#1#2{%
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\vskip 1.0em \@plus\p@
		\setlength\@tempdima{1.5em}%
		\begingroup
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\leavevmode \bfseries
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			\textcolor{header}{\sffamily \chaptername~#1}\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss\color{header}#2}\par
			\penalty\@highpenalty
		\endgroup
	\fi}
% section
\renewcommand*\l@section{\@dottedtocline{1}{2ex}{3ex}}
\renewcommand*\l@subsection{\@dottedtocline{1}{5ex}{5ex}}
\def\@pnumwidth{6ex}
\def\@dotsep{.25}
\def\@dottedtocline#1#2#3#4#5{%
	\ifnum #1>\c@tocdepth \else
	\vskip \z@ \@plus.2\p@
	{\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
		\parindent #2\relax\@afterindenttrue
		\interlinepenalty\@M
		\leavevmode
		\@tempdima #3\relax
		\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
		\color{header}\sffamily #4\nobreak
		\leaders\hbox{$\m@th
			\mkern \@dotsep mu\hbox{.}\mkern \@dotsep
			mu$}\hfill
		\nobreak
		\hb@xt@\@pnumwidth{\hfil\normalfont\color{header}#5}%
		\par}%
	\fi}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part
\renewcommand*{\partname}{ផ្នែក}
% chapter
% \RequirePackage{tikz}
\def\@makechapterhead#1{%
	{\if@twocolumn\vspace*{2.5ex}\else\relax\fi%
		\parindent\z@\raggedright%
		\ifnum\c@secnumdepth>\m@ne%
		%
		\begin{tikzpicture}[remember picture,overlay,every node/.style={font=\huge\sffamily,text=white}]
        \fill[left color=cyan, right color=blue](current page.north west) rectangle ([yshift=-2cm]current page.north east);
        \node[left,minimum height=1.25cm,bottom color=magenta!45!red,top color=magenta!67!white,rounded rectangle,inner ysep=.5ex] at ({\linewidth},0) {\thechapter.#1};
		\end{tikzpicture}}%
	%
	\fi\@@par\nobreak\vskip5ex}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% chapter star
\def\@makeschapterhead#1{%
	{\if@twocolumn\vspace*{2.5ex}\else\relax\fi%
		\parindent\z@\raggedright%
		\ifnum\c@secnumdepth>\m@ne%
		%
		\begin{tikzpicture}[remember picture,overlay,every node/.style={font=\huge\sffamily,text=white}]
        \fill[left color=cyan, right color=blue](current page.north west) rectangle ([yshift=-2cm]current page.north east);
        \node[left,minimum height=1.25cm,bottom color=magenta!45!red,top color=magenta!67!white,rounded rectangle,inner ysep=.5ex] at ({\linewidth},0) {#1};
        \end{tikzpicture}}%
	%
	\fi\@@par\nobreak\vskip5ex}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section spacing
\long\def\section{%
	\@startsection{section}{1}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\normalfont\bfseries}}
\long\def\subsection{%
	\@startsection{subsection}{2}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\normalfont\bfseries}}
\long\def\subsubsection{%
	\@startsection{subsubsection}{3}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\normalfont\bfseries}}
\long\def\paragraph{%
	\@startsection{paragraph}{4}{\z@}{%
		1.5ex\@plus.2ex\@minus.2ex}{-1em}{\normalfont\bfseries}}
\long\def\subparagraph{%
	\@startsection{subparagraph}{4}{\parindent}{%
		1.5ex\@plus.2ex\@minus.2ex}{-1em}{\normalfont\bfseries}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section drawing
% \RequirePackage{tikz}
\def\@sect#1#2#3#4#5#6[#7]#8{%
	\ifnum #2>\c@secnumdepth%
		\let\@svsec\@empty%
	\else%
		\refstepcounter{#1}%
		\protected@edef\@svsec{\@seccntformat{#1}\relax}%
	\fi%
	\@tempskipa #5\relax%
	\ifdim \@tempskipa>\z@%
		\begingroup%
		#6{%
			\noindent%
            \begin{tikzpicture}[overlay,every node/.style={font=\large\sffamily,text=white}]
            \node[right,bottom color=magenta!45!red,top color=magenta!67!white,rounded rectangle,inner ysep=1pt,line width=0pt](section)at(0,0){\@svsec.#8};
            \draw[line width=2pt](section.east)--(\linewidth,0);
            \end{tikzpicture}%
			\@@par\nobreak\vskip1ex}%
		\endgroup%
		\csname #1mark\endcsname{#7}%
		\addcontentsline{toc}{#1}{%
			\ifnum #2>\c@secnumdepth \else%
				\protect\numberline{\csname the#1\endcsname}%
			\fi%
			#7}%
	\else%
		\def\@svsechd{%
			#6{\hskip #3\relax%
				\@svsec #8}%
			\csname #1mark\endcsname{#7}%
			\addcontentsline{toc}{#1}{%
				\ifnum #2>\c@secnumdepth \else%
					\protect\numberline{\csname the#1\endcsname}%
				\fi%
				#7}}%
	\fi%
	\@xsect{#5}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section star
% \RequirePackage{tikz}
\def\@ssect#1#2#3#4#5{%
	\@tempskipa #3\relax%
	\ifdim \@tempskipa>\z@%
		\begingroup%
		#4{%
			\noindent%
			\begin{tikzpicture}[overlay,every node/.style={font=\large\sffamily,text=white}]
            \node[right,bottom color=magenta!45!red,top color=magenta!67!white,rounded rectangle,inner ysep=1pt,line width=0pt](section)at(0,0){#5};
            \draw[line width=2pt](section.east)--(\linewidth,0);
			\end{tikzpicture}%
			\@@par\nobreak\vskip1ex}%
		\endgroup%
	\else%
		\def\@svsechd{#4{\hskip #1\relax #5}}%
	\fi%
	\@xsect{#3}}
% reference
\RequirePackage{hyperref}
\hypersetup{%
	linktoc=all,%
	bookmarksnumbered,%
	bookmarksopen,%
	hidelinks}
\RequirePackage{bookmark}
\bookmarksetup{
	addtohook={%
		\ifnum\bookmarkget{level}=0%
		\bookmarksetup{color=red}%
		\fi%
		\ifnum\bookmarkget{level}=1%
		\bookmarksetup{color=blue}%
		\fi%
		\ifnum\bookmarkget{level}=2%
		\bookmarksetup{color=teal}%
		\fi}}
% enumerate
\RequirePackage[inline]{enumitem}
\RequirePackage{multicol}
\RequirePackage{pifont}
% set enumerate and itemize key for number of columns
% \RequirePackage{multicol}
\SetEnumitemKey{2}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{2},after=\end{multicols}}
\SetEnumitemKey{3}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{3},after=\end{multicols}}
\SetEnumitemKey{4}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{4},after=\end{multicols}}
\SetEnumitemKey{5}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{5},after=\end{multicols}}
\SetEnumitemKey{6}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{6},after=\end{multicols}}
%% set enumerate and itemize key for numerals
%\AddEnumerateCounter{\alpkh}{\@alpkh}{\char"1788}
%\AddEnumerateCounter{\khmer}{\@khmer}{\char"17e3}
\AddEnumerateCounter{\alpkh}{\@alpkh}{ឈ}
\AddEnumerateCounter{\khmer}{\@khmer}{៣}
% enumerate keys
\SetEnumitemKey{1}{label=\protect\color{header}\protect\sffamily\arabic*.}
\SetEnumitemKey{a}{label=\protect\color{header}\protect\sffamily\alph*.}
\SetEnumitemKey{A}{label=\protect\color{header}\protect\sffamily\Alph*.}
\SetEnumitemKey{i}{label=\protect\color{header}\protect\sffamily\roman*.}
\SetEnumitemKey{I}{label=\protect\color{header}\protect\sffamily\Roman*.}
\SetEnumitemKey{k}{label=\protect\color{header}\protect\sffamily\alpkh*.}
\SetEnumitemKey{m}{label=\protect\color{header}\protect\sffamily\khmer*.}
% itemize keys
\SetEnumitemKey{b}{label=\protect\color{header}\protect\ensuremath{\bullet}}
\SetEnumitemKey{c}{label=\protect\color{header}\protect\ensuremath{\circ}}
\SetEnumitemKey{d}{label=\protect\color{header}\protect\ensuremath{\diamond}}
\SetEnumitemKey{t}{label=\protect\color{header}\protect\ensuremath{\triangleright}}
\SetEnumitemKey{p}{label=\protect\color{header}\protect\ding{43}}
\SetEnumitemKey{w}{label=\protect\color{header}\protect\ding{45}}
% styling enumerate
\setlist[enumerate]{%
	parsep=0pt,%
	topsep=1ex,%
	partopsep=0pt,%
	leftmargin=*,%
	itemsep=.5ex,%
	labelsep=0.5ex}
\setlist[enumerate,1]{m}
\setlist[enumerate,2]{k}
\setlist[enumerate,3]{a}
\setlist[enumerate,4]{i}
% styling itemize
\setlist[itemize]{%
	parsep=0pt,%
	topsep=1ex,%
	partopsep=0pt,%
	leftmargin=*,%
	itemsep=.5ex,%
	labelsep=.5ex}
\setlist[itemize,1]{b}
\setlist[itemize,2]{c}
\setlist[itemize,3]{d}
\setlist[itemize,4]{t}
% caption
\RequirePackage{caption}
\RequirePackage{subcaption}
\renewcommand{\thefigure}{\khmer{figure}}
\renewcommand{\thetable}{\khmer{table}}
\renewcommand{\thesubtable}{\alpkh{subtable}}
\renewcommand{\thesubfigure}{\alpkh{subfigure}}
\DeclareCaptionFont{header}{\color{header}}
\captionsetup{%
	font=small,%
	skip=0pt,%
	labelfont={header,sf},%
	textfont={header,sf},%
	labelsep=period}
\captionsetup[sub]{%
	font=small,%
	skip=0.5ex,%
	labelfont={header,sf},%
	textfont={header,sf},%
	labelsep=period}
\setlength{\intextsep}{0pt}
%% name macro %%
\def\chaptername{មេរៀន}
\def\contentsname{មាតិកា}
\def\appendixname{បន្ថែម}
\def\listtablename{បញ្ជីតារាង}
\def\listfigurename{បញ្ជីរូភាព}
\def\tablename{តារាង}
\def\figurename{រូប}
\def\bibname{ឯកសារយោង}
\def\refname{ឯកសារយោង}
\def\abstractname{សង្ខេប}
% theorem name maro
\def\lemmaname{បទគន្លិះ}
\def\theoremname{ទ្រឹស្ដីបទ}
\def\corollaryname{វិបាក}
\def\propositionname{លក្ខណៈ}
\def\definitionname{និយមន័យ}
\def\examplename{ឧទាហរណ៍}
\def\exercisename{លំហាត់}
\def\answername{ចម្លើយ}
\def\remarkname{សម្គាល់}
\def\practicename{ប្រតិបត្តិ}
\def\formulaname{រូបមន្ត}
\def\proofname{សម្រាយបញ្ជាក់}
\def\explanationname{ពន្យល់}
\allowdisplaybreaks
%% change label color %%
\thm@headfont{\color{header}\sffamily\bfseries}
\def\th@remark{%
	\thm@headfont{\color{header}\sffamily\bfseries}%
	\normalfont % body font
	\thm@preskip\topsep \divide\thm@preskip\tw@
	\thm@postskip\thm@preskip
}
%% re-define proof environment %%
\renewenvironment{proof}[1][\color{header}\itshape\sffamily\bfseries\proofname]{\par
	\pushQED{\qed}%
	\normalfont \topsep2\p@\@plus1\p@\relax
	\trivlist
	\item[\hskip\labelsep
	\color{header}\sffamily
	#1\@addpunct{.}]\ignorespaces
}{%
	\popQED\endtrivlist\@endpefalse
}
%% re-define quite easy done symbol %%
\def\qedsymbol{\textcolor{header}{\ensuremath{\blacksquare}}}
%% paint color for bibiography counter %%
\def\@biblabel#1{\textcolor{header}{[#1]}}
%% footnote %%
\def\footnoterule{\kern -3pt\textcolor{header}{\hrule width \linewidth height 0.4pt}\kern 2.6pt}
\def\thefootnote{\color{header}\sffamily(\arabic{footnote})}
%% change every inline maths to display maths %%
\everymath{\displaystyle}
%% increase base line skip in display formula
\addtolength{\jot}{1pt}
%% prevent book contents from vertical stretching %%
\raggedbottom
\def\preparelabel{រៀបរៀងដោយ}
\def\preparename{អូល~សាយ}
\let\ps@origin\ps@plain
\def\ps@plain{%
	\let\@oddhead\@empty%
	\let\@evenhead\@oddhead%
	\def\@oddfoot{%
		\scriptsize\textcolor{header!89!white}{\footnotesize\itshape\preparelabel~\preparename}%និពន្ធ និងប្រើប្រាស់ថវិការ សប្បុរសធម៌
		\hfil\tikz{\node[fill=header,rounded rectangle,rounded rectangle,text=white,font=\large\sffamily]{\parbox{1cm}{\centering\thepage}};}%
		\hfil\textcolor{header!89!white}{\footnotesize\itshape Copyright\textcircled{c} Bunny Book Series}}%
	\def\@evenfoot{%
		\scriptsize\textcolor{header!89!white}{\footnotesize\itshape Copyright\textcircled{c} Bunny Book Series}%
		\hfil\tikz{\node[fill=header,rounded rectangle,text=white,font=\large\sffamily]{\parbox{1cm}{\centering\thepage}};}%
		\hfil\scriptsize\textcolor{header!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
		}%
	}
%
\def\ps@header{%
	\def\@oddhead{%
		\textcolor{header!89!white}{\footnotesize\itshape \leftmark}%
		\hfil\textcolor{header!89!white}{\footnotesize\itshape \rightmark}}%
	\def\@evenhead{%
		\textcolor{header!89!white}{\footnotesize\itshape \rightmark}%
		\hfil\textcolor{header!89!white}{\footnotesize\itshape \leftmark}}%
	\def\@oddfoot{%
		\scriptsize\textcolor{header!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
		\hfil\tikz{\node[fill=header,rounded rectangle,text=white,font=\large\sffamily]{\parbox{1cm}{\centering\thepage}};}%
		\hfil\textcolor{header!89!white}{\footnotesize\itshape Copyright\textcircled{c} Bunny Book Series}}%
	\def\@evenfoot{%
		\scriptsize\textcolor{header!89!white}{\footnotesize\itshape Copyright\textcircled{c} Bunny Book Series}%
		\hfil\tikz{\node[fill=header,rounded rectangle,text=white,font=\large\sffamily]{\parbox{1cm}{\centering\thepage}};}%
		\hfil\scriptsize\textcolor{header!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
	}%
}
%
\pagestyle{header}
%
\def\arraystretch{1.25}
%
\def\baselinestretch{1.2}
\def\setminus{\ensuremath{{}-{}}}
%
\RequirePackage{cancel}
\def\CancelColor{\color{header}}
%
\RequirePackage{tkz-tab}
\tikzset{%
	t style/.style={draw=header},%
	h style/.style={pattern = north east lines,pattern color =header},%
	double style/.append style={draw=header},%
	arrow style/.style={->,draw=header},%
	from style/.append style={draw=header}}
\def\tkzTabDefaultLineWidth{1pt}
\RequirePackage{tkz-euclide}
%
% todo: adding water mark text
%\RequirePackage{fontawesome}
\RequirePackage{draftwatermark}
\SetWatermarkAngle{90}
\SetWatermarkColor{header}
\SetWatermarkHorCenter{0.75cm}
\SetWatermarkFontSize{10pt}
\SetWatermarkText{\protect\textit{ហាមធ្វើអាជីវកម្មលើសៀវភៅនេះដោយគ្មានការអនុញ្ញាត}}
%
\endinput