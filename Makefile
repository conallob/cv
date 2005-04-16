# $Id$

# Files
SOURCE=CV.tex
DVI=CV.dvi
PDF=CV.pdf
PS=CV.ps
RTF=CV.rtf

# Apps
LATEX=latex
DVIPDF=dvipdf
PDFPS=pdf2ps
LATEX2HTML=latex2html
LATEX2RTF=latex2rtf


dvi:
	$(LATEX) $(SOURCE)
	
pdf:
	$(DVIPDF) $(DVI)

ps:
	$(PDFPS) $(PDF)

html:
	$(LATEX2HTML) $(SOURCE)	
	sed -i s/usr\\/share\\/latex2html\\/icons/images\\/cv/g CV/*.html

rtf:
	$(LATEX2RTF) $(SOURCE)

all: dvi  pdf  ps  html  rtf

clean:
	rm *.aux *.log	
