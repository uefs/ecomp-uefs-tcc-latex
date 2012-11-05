README File do Projeto LaTeX para os Trabalhos de Conclusão de Curso do
curso de Egenharia de Computação da Universidade Estadual de Feira de Santana.


Estamos trabalhando para produzir um modelo que atenda a todos os requisitos das
normas ABNT e as restrições impostas pelo Colegiado do curso.
Em breve abriremos mais espaço para discussões e uma lista de perguntas fequentes.

Responsáveis pelo desenvolvimento e suporte do modelo LaTeX:

* João Carlos Nunes Bittencourt
* Anderson Marques Ferraz

Quer ajudar!? Entre em contato conosco.

# Instalando

## No Ubuntu

Estas instruções foram testadas no Ubuntu 12.04, mas devem funcionar para outras versões. Execute:

    sudo apt-get install abntex texlive-latex-extra texlive-latex3

## No Fedora 17

Todos os comandos devem ser executados como root.

Primeiro, instale o repositório TexLive 2012 no seu sistema, seguindo as instruções descritas em [TexLive 2012] (http://fedoraproject.org/wiki/Features/TeXLive#TeX_Live_2012_2). 

Depois, instale o pacote abntex. Ele instalará todas as dependências do modelo (esta instalação baixa muitos pacotes):

    yum localinstall http://codigolivre.org.br/frs/download.php/5342/abntex-0.9-beta2.noarch.rpm

Depois, crie estes links simbólicos para vincular as estruturas de diretórios (que são diferentes do abntex e do texlive):

    ln -s /usr/share/texmf/bibtex/bib/abntex /usr/share/texlive/texmf-dist/bibtex/bib/abntex
    ln -s /usr/share/texmf/bibtex/bst/abntex /usr/share/texlive/texmf-dist/bibtex/bst/abntex
    ln -s /usr/share/texmf/doc/bibtex/abntex /usr/share/texlive/texmf-dist/doc/bibtex/abntex
    ln -s /usr/share/texmf/doc/latex/abntex /usr/share/texlive/texmf-dist/doc/latex/abntex
    ln -s /usr/share/texmf/makeindex/abntex /usr/share/texlive/texmf-dist/makeindex/abntex
    ln -s /usr/share/texmf/tex/latex/abntex /usr/share/texlive/texmf-dist/tex/latex/abntex

E, ao final, atualize as referências do texlive
   
    texhash

## No Gentoo

Usuários mais experientes, já devem saber que existe uma forma muito simples de instalar o suporte ao LaTeX no seu sistema operacional. Com o a definição das USE Flags no arquivo /etc/conf.d/make.conf (antigo /etc/make.conf) você pode automatizar o processo de instalação e não se preocupar em selecionar pacotes em meio ao mundo de opções que existem no Portgage.

No arquivo /etc/conf.d/make.conf ataulize a sua lista de USE Flags:
    
    LATEX="tex4ht latex science graphics dvipdfm"
    USE="{Suas USE Flags} ${LATEX}"

Além disso, para dar suporte ao seu idioma preferido, não esqueça de verificar a variável LINGUAS:

    LINGUAS="pt_BR"

Dessa forma, além dos pacotes padrão, o portage selecionará o pacote de idiomas correspondente para você. Em seguida, execute o comando mágico:

    emerge -avuDN world system --quiet
    
Confirme os pacotes que serão instalados, ou atualizados e pode sair para tomar um cafezinho, paquerar sua colega de trabalho, ou mesmo apreciar o pôr-do-sol (use a sua criatividade).

Uma vez instalados os pacotes básicos para o LaTeX, é hora de escolher o seu editor. Atualmente, para muitos usuários é comum o uso do Kile (principalmente entre usuários KDE). Entretando existe uma gama enorme de editores, e esta tarefa fica por sua conta. Explore, instale e escolha.

Agora é hora de instalar o pacote ABNTeX. O Gentoo adicionou recentemente o pacote abntex à sua árvore de pacotes, mas se você usa um sistema STABLE, deverá primento adicioná-lo no arquivo package.keywords, e em seguida instalar o abntex:

    echo dev/tex/abntex >> /etc/portage/package.keywords
    emerge abntex
    
Ao final deste processo atualize as referências do texlive

    texhash