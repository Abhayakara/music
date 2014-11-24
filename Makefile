PONDDIR=/Applications/LilyPond.app/Contents/Resources
POND=$(PONDDIR)/bin/lilypond

all: aylesford.pdf aylesford.midi
	open aylesford.pdf

aylesford.pdf: aylesford.ly
	$(POND) aylesford.ly

aylesford.midi: aylesford.ly
	$(POND) aylesford.py
