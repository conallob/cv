# $Id$

# Files
SOURCE=CV.tex
DVI=CV.dvi
PDF=CV.pdf
PS=CV.ps
RTF=CV.rtf

# Apps
GIT=git 
LATEX=latex
DVIPDF=dvipdf
PDFPS=pdf2ps
LATEX2HTML=latex2html
LATEX2RTF=latex2rtf

all: dvi  pdf  ps  rtf html  


commit:
	$(GIT) commit

ci: commit

update:
	$(GIT) update

up: update

dvi:
	$(LATEX) $(SOURCE)
	
pdf: dvi
	$(DVIPDF) $(DVI)

ps: dvi
	$(PDFPS) $(PDF)

html:
	$(LATEX2HTML) $(SOURCE)	
	sed -i s/usr\\/share\\/latex2html\\/icons/images\\/cv/g CV/*.html

rtf:
	$(LATEX2RTF) $(SOURCE)

clean:
	rm *.aux *.log	
