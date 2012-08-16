
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

