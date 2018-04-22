FROM ubuntu:trusty

RUN apt-get update && sudo apt-get install -y git
RUN git clone https://github.com/adericbourg/CV.git

RUN apt-get update && sudo apt-get install -y --no-install-recommends make texlive-base texlive-binaries texlive-extra-utils texlive-font-utils texlive-latex-base texlive-fonts-recommended texlive-latex-extra texlive-fonts-extra texlive-lang-english texlive-lang-french dvipng texlive-latex-recommended lmodern

RUN sudo apt-get install latex-xcolor   # xcolor.sty
RUN sudo apt-get install pgf            # tikz.sty
RUN sudo apt-get install poppler-utils  # pdftotext

RUN cd CV && make
