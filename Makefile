PONDDIR=/Applications/LilyPond.app/Contents/Resources
POND=$(PONDDIR)/bin/lilypond

fuga.pdf: fuga.ly
	$(POND) fuga.ly
	open fuga.pdf

midnight.pdf: midnight.ly
	$(POND) midnight.ly

all: aylesford.pdf aylesford.midi scarlatti-k34.pdf scarlatti-k34.midi

aylesford.pdf: aylesford.ly
	$(POND) aylesford.ly

aylesford.midi: aylesford.ly
	$(POND) aylesford.py

scarlatti-k34.pdf: scarlatti-k34.ly
	$(POND) scarlatti-k34.ly

scarlatti-k34.midi: scarlatti-k34.ly
	$(POND) scarlatti-k34.py
