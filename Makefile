PONDDIR=/Applications/LilyPond.app/Contents/Resources
POND=$(PONDDIR)/bin/lilypond

romanza.pdf: romanza.ly
	$(POND) romanza.ly
	open romanza.pdf

foo.pdf: foo.ly
	$(POND) foo.ly
	open foo.pdf

fuga.pdf: fuga.ly
	$(POND) fuga.ly

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
