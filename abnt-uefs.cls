%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Template de TCC baseado nas normas da ABNT voltado para alunos da UEFS
% Versão: 2.0
% Desenvolvimento: Danilo de Oliveira Gonçalves
% Adaptação final: João Carlos Nunes Bittencourt
% Data: 31/03/2011
% Última atualização: 30/11/2011
% Obs.: Este arquivo contém as modificações necessárias para adequação aos
%       padrões adotados pelo curso de Engenharia de Computação da UEFS
% 
% Acrescentadas novas adaptações baseadas no modelo ABNT da UTFPR, desenvolvido
% por Diogo Rosa Kuiaski <diogo.kuiaski@gmail.com> e Hugo Vieira Neto <hvieir@utfpr.edu.br>
%
% Sinta-se livre para melhorar este modelo, mas não se esqueça de
% comunicar aos autores para que outras pessoas possam ter acesso
% a essas melhorias. Sugestões também são bem-vindas.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}

\PassOptionsToClass{pagestart=firstchapter,tocpage=prefix,floatnumber=continuous}{abnt}

\RequirePackage{ifthen}
\RequirePackage{lastpage}
\RequirePackage{perpage}
\RequirePackage{xparse}
\RequirePackage{url}
\RequirePackage[T1]{fontenc}
\RequirePackage[latin1]{inputenc}
\RequirePackage{supertabular} % pacote necessário para quebrar tabela de simbolos em páginas
\RequirePackage{remreset} % remover reset na contagem (chapter)
%\RequirePackage{listings} %pacote para algoritmos
\PassOptionsToPackage{hyperindex=false}{hyperref}
\PassOptionsToPackage{paginas=nao,esquema=misto,caixa=mista,lista=unica,ordem=alf}{tabela-simbolos}


\LoadClass{abnt}

\makeatletter

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MUDA FONTE PARA ARIAL
% Rosária me disse que a fonte correta era Arial. Não vamos encrencar.
% Se ainda assim quiser usar a times, basta comentar as linhas abaixo.
% Mais opções de fontes em: http://www.tug.dk/FontCatalogue/allfonts.html

\renewcommand{\rmdefault}{phv} % Arial
\renewcommand{\sfdefault}{phv} % Arial

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DEFINICOES DA UEFS

\providecommand{\UEFSdepartamentodata}{}
\newcommand{\departamento}[1]{\renewcommand{\UEFSdepartamentodata}{#1}}

\providecommand{\UEFSgraduacaodata}{}
\newcommand{\graduacao}[1]{\renewcommand{\UEFSgraduacaodata}{#1}}

\providecommand{\UEFScursodata}{}
\newcommand{\curso}[1]{\renewcommand{\UEFScursodata}{#1}}

\providecommand{\UEFSareadata}{}
\newcommand{\area}[1]{\renewcommand{\UEFSareadata}{#1}}

\providecommand{\UEFSdocumentodata}{}
\newcommand{\documento}[1]{\renewcommand{\UEFSdocumentodata}{#1}}

\providecommand{\UEFSniveldata}{}
\newcommand{\nivel}[1]{\renewcommand{\UEFSniveldata}{#1}}

\providecommand{\UEFStitulacaodata}{}
\newcommand{\titulacao}[1]{\renewcommand{\UEFStitulacaodata}{#1}}

\providecommand{\UEFScitadata}{}
\newcommand{\cita}[1]{\renewcommand{\UEFScitadata}{#1}}

\providecommand{\UEFSsubtitulodata}{}
\newcommand{\subtitulo}[1]{\renewcommand{\UEFSsubtitulodata}{#1}}

\providecommand{\UEFStitledata}{}
\renewcommand{\title}[1]{\renewcommand{\UEFStitledata}{#1}}

\providecommand{\UEFSpalavraschavedata}{}
\newcommand{\palavraschave}[1]{\renewcommand{\UEFSpalavraschavedata}{#1}}

\providecommand{\UEFSkeywordsdata}{}
\newcommand{\keywords}[1]{\renewcommand{\UEFSkeywordsdata}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPA

\renewcommand{\capa}
{
	\begin{titlepage}
		\begin{figure}[ht]
		  \centering
		  \includegraphics[width=0.08\linewidth]{Brasao_uefs.png}
		\end{figure}\vspace{-1cm}
		\begin{center}
			\textbf{\normalsize\MakeUppercase{\ABNTinstituicaodata}}\\
			\normalsize\MakeUppercase{\UEFSgraduacaodata}\par	
		\end{center}		
		\vspace{3.5cm}	
		\begin{center}
			\textbf{\normalsize\MakeUppercase{\ABNTautordata}}\par
		\end{center}
		\vspace{2.0cm}
		\begin{center}
			\normalsize\ABNTchapterfont\MakeUppercase{\ABNTtitulodata}\par
			\ABNTifnotempty{\UEFSsubtitulodata}
			{
				\vspace{0.3cm}\ABNTchapterfont\MakeUppercase{\UEFSsubtitulodata}\par
			}
		\end{center}
		\vspace{.5cm}
		\begin{center}
			\ABNTifnotempty{\UEFSniveldata}
			{
				\MakeUppercase{de \UEFSniveldata}\par
			}
		\end{center}
		\vfill
		\begin{center}
			\MakeUppercase{\ABNTlocaldata}\par
			\ABNTdatadata
		\end{center}
	\end{titlepage}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FOLHA DE ROSTO

\newcommand{\esporient}[2]
{
	\leftskip 0em
	\@tempdima 5.5em
	\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{#1#2\hfil}
}

\newcommand{\espcoorient}[2]
{
	\leftskip 0em
	\@tempdima 7em
	\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{#1#2\hfil}
}

\renewcommand{\folhaderosto}
{
  \begin{titlepage}
    \espaco{1.1}

    \begin{center}
	\ABNTchapterfont\MakeUppercase\ABNTautordata
    \end{center}

    \vspace{7.5cm}

    \begin{center}
	\ABNTchapterfont\MakeUppercase\ABNTtitulodata\par
	\ABNTifnotempty{\UEFSsubtitulodata}
	{
	  \ABNTchapterfont\MakeUppercase{\UEFSsubtitulodata}\par
	}
    \end{center}

    \vspace{2cm}

    \hspace{.35\textwidth}
    \begin{minipage}{.5\textwidth}
	\begin{espacosimples}
		\ABNTcomentariodata\par
	\end{espacosimples}
    \end{minipage}

\hspace{.35\textwidth}
\begin{minipage}{.5\textwidth}
	%\begin{espacosimples}
		\esporient{\numberline {Orientador:}}{\ignorespaces\ABNTorientadordata}
	%\end{espacosimples}
\end{minipage}

\ABNTifnotempty{\ABNTcoorientadordata}{
	\hspace{.35\textwidth}
	\begin{minipage}{.5\textwidth}
		%\begin{espacosimples}
			\espcoorient{\numberline {Co-Orientador:}}{\ignorespaces\ABNTcoorientadordata}
		%\end{espacosimples}
	\end{minipage}}

\vfill

	\begin{center}
		\ABNTifnotempty{\UEFSniveldata}
		{
			\MakeUppercase{de \UEFSniveldata}\par
		}
	\end{center}
	\vfill
	\begin{center}
		\MakeUppercase{\ABNTlocaldata}\par
		\ABNTdatadata
	\end{center}

\end{titlepage}
}% end of \folhaderosto

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TERMO DE APROVACAO

\providecommand{\ABNTtextoaprovacaodata}{}
\newcommand{\textoaprovacao}[1]{\renewcommand{\ABNTtextoaprovacaodata}{#1}}

\providecommand{\ABNTprimeiroassinadata}{}
\newcommand{\primeiroassina}[1]{\renewcommand{\ABNTprimeiroassinadata}{#1}}

\providecommand{\ABNTsegundoassinadata}{}
\newcommand{\segundoassina}[1]{\renewcommand{\ABNTsegundoassinadata}{#1}}

\providecommand{\ABNTterceiroassinadata}{}
\newcommand{\terceiroassina}[1]{\renewcommand{\ABNTterceiroassinadata}{#1}}

\providecommand{\ABNTquartoassinadata}{}
\newcommand{\quartoassina}[1]{\renewcommand{\ABNTquartoassinadata}{#1}}

\providecommand{\ABNTlocaldiadata}{}
\newcommand{\localdia}[1]{\renewcommand{\ABNTlocaldiadata}{#1}}

\newcommand{\termodeaprovacao}
{
	\begin{titlepage}
		\pretextualchapter{TERMO DE APROVA\c{C}\~AO}
		\vspace{-0.25cm}
		\begin{center}
			\large\ABNTautordata
		\end{center}
		\vspace{0.75cm}
		\begin{center}
			\large\ABNTtitulodata
		\end{center}
		\vspace{0.75cm}
		\begin{espacosimples}
			\noindent\ABNTtextoaprovacaodata\par
		\end{espacosimples}
		\setlength{\ABNTsignthickness}{0.4pt}
		\setlength{\ABNTsignskip}{1.75cm}
		\ABNTifnotempty{\ABNTprimeiroassinadata}%
		{
		\begin{center}
			\vspace{-0.5cm}
			\assinatura{\ABNTprimeiroassinadata}
		\end{center}
		}
		\ABNTifnotempty{\ABNTsegundoassinadata}%
		{
		\begin{center}
			\vspace{-0.5cm}
			\assinatura{\ABNTsegundoassinadata}
		\end{center}
		}
		\ABNTifnotempty{\ABNTterceiroassinadata}%
		{
		\begin{center}
			\vspace{-0.5cm}
			\assinatura{\ABNTterceiroassinadata}
		\end{center}
		}
		\ABNTifnotempty{\ABNTquartoassinadata}%
		{%
		\begin{center}
			\vspace{-0.5cm}
			\assinatura{\ABNTquartoassinadata}
		\end{center}
		}
		\vfill
		\begin{center}
			\ABNTlocaldiadata
		\end{center}
	\end{titlepage}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   DEDICATORIA  

\newenvironment{dedicatoria}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{}
	\pretextualchapter{}
	\vfill
	\begin{flushright}
		\begin{minipage}{.50\textwidth}
			\begin{espacosimples}%
				\setlength\parindent{0pt}
				\setlength\parskip{12pt}
}%
{
			\end{espacosimples}
		\end{minipage}
	\end{flushright}
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AGRADECIMENTOS 

\newenvironment{agradecimentos}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{}
	\pretextualchapter{AGRADECIMENTOS}%
}%
{
	\newpage
} 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RESUMO

\renewenvironment{resumo}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{resumo}
	\pretextualchapter{\MakeUppercase{\resumoname}}%
	\begin{espacosimples}%
		\setlength\parindent{0pt}
		\setlength\parskip{12pt}
}%
{
		\par \textbf{Palavras-chave:} \UEFSpalavraschavedata
	\end{espacosimples}
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ABSTRACT
 
\renewenvironment{abstract}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{abstract}
	\pretextualchapter{\MakeUppercase{\ABNTabstractname}}%
	\begin{espacosimples}%
		\setlength\parindent{0pt}
		\setlength\parskip{12pt}
}%
{
		\par \textbf{Keywords:} \UEFSkeywordsdata
		\end{espacosimples}
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE FIGURAS

% Cria um comando auxiliar para montagem da lista de figuras
\newcommand{\figfillnum}[1]
{%
  {\hspace{0.3em}\normalfont\hfill}\nobreak % era \hspace{1em}
  \hb@xt@\@pnumwidth{\hfil\normalfont #1}{}\par
}

% Altera a forma de montagem da lista de figuras
\renewcommand{\listadefiguras}
{
	\ifthenelse{\boolean{@twocolumn}}
		{\setboolean{ABNTrestorecol}{true}\onecolumn}
		{\setboolean{ABNTrestorecol}{false}}
	\setchaptertype{listoffigures}
	\pretextualchapter{LISTA DE FIGURAS}
	\@starttoc{lof}
	\ifthenelse{\boolean{ABNTrestorecol}}
		{\twocolumn}
		{}
}

\renewcommand*{\l@figure}[2]{
	\leftskip 3.1em
	\rightskip 1.6em
	\parfillskip -\rightskip
	\parindent 0em
	\@tempdima 2.0em
	\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{Figura \normalfont #1}\nobreak \figfillnum{#2}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE TABELAS

% Cria um comando auxiliar para montagem da lista de tabelas
\newcommand{\tabfillnum}[1]{%
	{\hspace{0.3em}\normalfont\hfill}\nobreak % era \hspace{1em}
	\hb@xt@\@pnumwidth{\hfil\normalfont #1}{}\par}

% Altera a forma de montagem da lista de tabelas
\renewcommand{\listadetabelas}
{
	\ifthenelse{\boolean{@twocolumn}}
		{\setboolean{ABNTrestorecol}{true}\onecolumn}
		{\setboolean{ABNTrestorecol}{false}}
	\setchaptertype{listoftables}
	\pretextualchapter{LISTA DE TABELAS}
	\@starttoc{lot}
	\ifthenelse{\boolean{ABNTrestorecol}}
		{\twocolumn}
		{}
}%

\renewcommand*{\l@table}[2]{
	\leftskip 3.4em
	\rightskip 1.6em
	\parfillskip -\rightskip
	\parindent 0em
	\@tempdima 2.0em
	\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{Tabela \normalfont #1}\nobreak \tabfillnum{#2}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE SÍMBOLOS

% Define os comandos que montam a lista de símbolos
\newcommand{\listadesimbolos}
{
	\pretextualchapter{LISTA DE S\'IMBOLOS}\@starttoc{lsb}
}

\newcommand{\simbolo}[2]
{
	{\addcontentsline{lsb}{simbolo}{\numberline{#1}{#2}}}#1
}

\newcommand{\l@simbolo}[2]
{
	\vspace{-0.75cm}
	\leftskip 0em
	\parindent 0em
	\@tempdima 10em
	\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{\normalfont#1}\hfil\nobreak\par
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE SIGLAS

% Define o comando que monta a lista de siglas
\newcommand{\listadesiglas}
{
      \pretextualchapter{LISTA DE SIGLAS}\@starttoc{lsg}
}
\newcommand{\sigla}[2]{
      {\addcontentsline{lsg}{sigla}{\numberline{#1}{#2}}}#1
}

\newcommand{\l@sigla}[2]
{
	\vspace{-0.75cm}
	\leftskip 0em
	\parindent 0em
	\@tempdima 10em
	\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{\normalfont #1}\hfil\nobreak\par
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SUMARIO

%Altera o espaçamento entre dots
\renewcommand\@dotsep{2}

%Altera forma de montagem do table of contents
\renewcommand\l@chapter[2]
{
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 0.5em \@plus\p@ % ajusta espacamento entre capítulos
    \setlength\@tempdima{1.5em}%
    \begingroup
      \ifthenelse{\boolean{ABNTpagenumstyle}}
        {\renewcommand{\@pnumwidth}{3.5em}}%alterei aqui pra testar de 3.5
        {}
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \normalsize\ABNTtocchapterfont
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\dotfill \nobreak%
      \ifthenelse{\boolean{ABNTpagenumstyle}}
         {%
          \hb@xt@\@pnumwidth{\hss
            \ifthenelse{\not\equal{#2}{}}{{\normalfont \thinspace#2}}{}}\par
         }
         {%
          \hb@xt@\@pnumwidth{\hss #2}\par
         }
      \penalty\@highpenalty
    \endgroup
  \fi
}

%Altera forma de montagem das secoes
\renewcommand{\l@section}[2]
{
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\setlength\@tempdima{1em}%
		\begingroup
			\ifthenelse{\boolean{ABNTpagenumstyle}}
				{\renewcommand{\@pnumwidth}{1em}}
				{}
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			\MakeLowercase{#1}\nobreak\dotfill\nobreak%
			\hb@xt@\@pnumwidth{\hss{#2}}
			\begin{spacing}{\taxaespacomeio}\par\end{spacing}
			\penalty\@highpenalty
		\endgroup
	\fi
}

%Altera forma de montagem das subsecoes
\renewcommand{\l@subsection}[2]
{
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\setlength\@tempdima{2.5em}%
		\begingroup
			\renewcommand{\@pnumwidth}{1em}
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			#1\nobreak\dotfill\nobreak%
			\hb@xt@\@pnumwidth{\hss{#2}}
			\begin{spacing}{\taxaespacomeio}\par\end{spacing}
			\penalty\@highpenalty
		\endgroup
	\fi
}

%Altera forma de montagem das subsubsecoes
\renewcommand{\l@subsubsection}[2]
{
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\setlength\@tempdima{3em}%
		\begingroup
			\renewcommand{\@pnumwidth}{1em}
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			#1\nobreak\dotfill\nobreak%
			\hb@xt@\@pnumwidth{\hss{#2}}
			\begin{spacing}{\taxaespacomeio}\par\end{spacing}
			\penalty\@highpenalty
		\endgroup
	\fi
}

% MUDA OS CAPÍTULOS PARA FICAREM EM MAIÚSCULO NO SUMÁRIO
\let \oldchap=\chapter{}
\renewcommand*{\chapter}{%
\secdef{\Chap}{\ChapS}%
}
\newcommand\ChapS[1]{\oldchap*{\MakeUppercase{#1}}}
\newcommand\Chap[2][]{\oldchap[\MakeUppercase{#1}]{\MakeUppercase{#2}\vspace{-3.5em}}}

% MUDA AS SEÇÕES PARA FICAREM EM MAIÚSCULO NO SUMÁRIO
\let \oldsect=\section{}
\renewcommand*{\section}{%
\secdef{\Sect}{\SectS}%
}
\newcommand\SectS[1]{\oldsect*{\MakeUppercase{#1}}}
\newcommand\Sect[2][]{\oldsect[\MakeUppercase{#1}]{\MakeUppercase{#2}}}

\def\IgnoredWords
    {a,is,to,of,or,and}

\def\CapitalizeWithIgnoreWord#1%
    {\doifinsetelse{#1}\IgnoredWords{#1}{\Word{#1}}}

\def\CapitalizeWithIgnore
    {\let\processword\CapitalizeWithIgnoreWord
     \processwords}

\def\processwords#1%
    {\doprocesswords#1 \od}

% MUDA AS SUBSEÇÕES PARA FICAREM EM MAIÚSCULO NO SUMÁRIO
\let \oldsubsect=\subsection{}
\renewcommand*{\subsection}{
\secdef{
 \SubSect}{\SubSectS}
}

\newcommand\SubSectS[1]{\oldsubsect*{\MakeUppercase{#1}}}
\newcommand\SubSect[2][]{\oldsubsect[\MakeUppercase{#1}]{\capitalize{#2}}}

% MUDA AS SUBSUBSEÇÕES PARA FICAREM EM MAIÚSCULO NO SUMÁRIO
\let \oldsubsubsect=\subsubsection{}
\renewcommand*{\subsubsection}{%
\secdef{\SubSubSect}{\SubSubSectS}%
}
\newcommand\SubSubSectS[1]{\oldsubsubsect*{\MakeUppercase{#1}}}
\newcommand\SubSubSect[2][]{\oldsubsubsect[\MakeUppercase{#1}]{\capitalize{#2}}}

\renewcommand*\l@section{\@dottedtocline{1}{0em}{2.3em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{0em}{3.2em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{0em}{4.1em}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% COMANDO QUE CAPITALIZA UM TEXTO ``\capitalize{texto}''

\ExplSyntaxOn
\NewDocumentCommand{\capitalize}{>{\SplitList{~}}m}{
  \CapitalizeFirst#1\Capitalize\unskip
}
\ExplSyntaxOff
\def\Sentinel{\Capitalize}
\def\CapitalizeFirst#1{\MakeUppercase#1 \Capitalize}
\def\Capitalize#1{%
  \def\next{#1}%
  \ifx\next\Sentinel
    \expandafter\unskip
  \else
    \CheckInList{#1}\space\expandafter\Capitalize
  \fi}
\def\CheckInList#1{%
  \ifcsname List@\detokenize{#1}\endcsname
    #1%
  \else
    \MakeUppercase#1%
  \fi}
\def\AppendToList#1{%
  \@for\next:=#1\do
  {\expandafter\let\csname List@\detokenize\expandafter{\next}\endcsname\empty}}
\AppendToList{a,is,of,de,do,da,em,para,e,um,uma,dos,das, seu, sua, seus, suas}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPITULOS

% Altera o tamanho das fontes
\renewcommand{\ABNTchapterfont}{\bfseries}
\renewcommand{\ABNTchaptersize}{\normalsize}
\renewcommand{\ABNTsectionfont}{\normalfont}
\renewcommand{\ABNTsectionfontsize}{\normalsize}
\renewcommand{\ABNTsubsectionfont}{\normalfont}
\renewcommand{\ABNTsubsectionfontsize}{\normalsize}
\renewcommand{\ABNTsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTsubsubsectionfontsize}{\normalsize}
\renewcommand{\ABNTanapsize}{\normalsize}

% Defining how is typeset the \chapter
\def\@makechapterhead#1{%
  {%
    \noindent
    \textbf{\thechapter\hspace{2ex}\MakeUppercase{#1}}
    \par
  }%
  \vspace{4.5em}
}

% Defining how is typeset the \chapter*
\def\@makeschapterhead#1{%
  {%
    \centering
    \textbf{\MakeUppercase{#1}}
    \par
  }%
  \vspace{\baselineskip}
}

%\setboolean{ABNTcapchap}{true} % deixou os títulos das seções em maiúsculo
\setboolean{ABNTCapAnnexAppendix}{true} % nao tinha essa linha
\setboolean{ABNTpagenumstyle}{false} % nao tinha essa linha

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TABULAÇÃO

% Ajuste de tabulação
\setlength{\parindent}{1.25cm}
\setlength{\parskip}{0.0cm}

\newcommand{\SPACE}{\rule{0in}{3ex}} %% espaçamento entre linhas das tabelas

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ELEMENTOS DE LISTA

\let\orig@Description =\description
\def\Nospacing{\itemsep=1pt\topsep=0pt\partopsep=0pt%
\parskip=0pt\parsep=0pt}

\renewenvironment{description}{\orig@Description\Nospacing}{\endlist}

\let\orig@Itemize =\itemize
\def\Nospacing{\itemsep=1pt\topsep=0pt\partopsep=0pt%
\parskip=0pt\parsep=0pt}

\renewenvironment{itemize}{\orig@Itemize\Nospacing}{\endlist}

\let\orig@Enumerate =\enumerate
\def\Nospacing{\itemsep=1pt\topsep=0pt\partopsep=0pt%
\parskip=0pt\parsep=0pt}

\renewenvironment{enumerate}{\orig@Enumerate\Nospacing}{\endlist}

% Altera o espacamento das linhas dos capitulos e apendices
\newcommand*{\taxaespacomeio}{.5}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NUMERACAO

% Define o tipo de numeracao de figuras, tabelas e equacoes
\AddAbsoluteCounter{figure}
\setcounter{absfigure}{0}
\renewcommand{\thefigure}{\arabic{absfigure}}
\AddAbsoluteCounter{table}
\setcounter{abstable}{0}
\renewcommand{\thetable}{\arabic{abstable}}
\AddAbsoluteCounter{equation}
\setcounter{absequation}{0}
\renewcommand{\theequation}{\arabic{absequation}}

% Define o tipo de numeracao das paginas
\renewcommand{\chaptertitlepagestyle}{plain}

% Altera a posicao da numeracao de paginas dos elementos pre-textuais
\renewcommand{\pretextualchapter}
{
	\if@openright\cleardoublepage\else\clearpage\fi
	\pagestyle{\chaptertitlepagestyle}
	\global\@topnum\z@
	\@afterindentfalse
	\renewcommand{\thepage}{}
	\@schapter
}

% Altera a posicao da numeracao de paginas dos elementos textuais
\renewcommand{\ABNTchaptermark}[1]
{
	\ifthenelse{\boolean{ABNTNextOutOfTOC}}
		{\markboth{\ABNTnextmark}{\ABNTnextmark}}
		{\chaptermark{#1}
	\pagestyle{\chaptertitlepagestyle}}
}

% Redefine o tipo de numeracao das paginas
\renewcommand{\ABNTBeginOfTextualPart}
{
	\renewcommand{\chaptertitlepagestyle}{plainheader}
	\renewcommand{\thepage}{\arabic{page}}
	%\setcounter{page}{1}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LEGENDAS 

\newcommand{\captionfonts}{\small}

\long\def\@makecaption#1#2{
	\vskip\abovecaptionskip
	\sbox\@tempboxa{{\captionfonts \textbf{#1: #2}}}%
	\ifdim \wd\@tempboxa >\hsize
		{\captionfonts \textbf{#1: #2}\par}
	\else
		\hbox to\hsize{\hfil\box\@tempboxa\hfil}%
	\fi
	\vskip\belowcaptionskip
}

\newcommand{\fonte}[1]
{
	\begin{flushleft}
		\begin{spacing}{\taxaespacomeio}
			\par
		\end{spacing}
		\centering\small{\textbf{Fonte: #1}}
	\end{flushleft}
}

\renewcommand{\fnum@figure}{\textbf{\figurename~\thefigure}}
\renewcommand{\fnum@table}{\textbf{\tablename~\thetable}}

\makeatother

%Hifenização (adicionar até caber sem separar palavras) %Isso faz com que o Latex não separe sílabas.
\hyphenpenalty=10000   \exhyphenpenalty=10000
\sloppy

\setcounter{secnumdepth}{5}
\pagenumbering{arabic}
\setcounter{tocdepth}{5}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% REFERENCIAS 

\renewcommand{\ABNTbibliographyname}{REFER\^ENCIAS}

