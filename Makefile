PONDDIR=/Applications/LilyPond.app/Contents/Resources
POND=$(PONDDIR)/bin/lilypond

midnight.pdf: midnight.ly
	$(POND) midnight.ly
	open midnight.pdf
	open midnight-SATB.pdf

all: aylesford.pdf aylesford.midi scarlatti-k34.pdf scarlatti-k34.midi

aylesford.pdf: aylesford.ly
	$(POND) aylesford.ly

aylesford.midi: aylesford.ly
	$(POND) aylesford.py

scarlatti-k34.pdf: scarlatti-k34.ly
	$(POND) scarlatti-k34.ly

scarlatti-k34.midi: scarlatti-k34.ly
	$(POND) scarlatti-k34.py
