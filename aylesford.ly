
#(set-global-staff-size 19)
\header{
  title = "Aylesford Piece"
  composer = "Georg Friedrich Haendel"
}

keyMeter = { \key g \minor \time 2/2 }

\parallelMusic #'(va dynD vb) {
  % Measure 1
  \partial 4 d4-1\staccato |
  \partial 4 s4\mf |
  \partial 4 r4 |

  % Measure 2
  g4-2-. bes-5-. a-. g8 (fis |
  s1 |
  r2 r4 d-5-. |

  % Measure 3
  g2-2 d4) r |
  s1 |
  g4-2-. a-1-. bes-2-. (a8-1 g |

  % Measure 4
  a'8-2 (bes c4-.) bes-. a-. |
  s1 |
  fis2 d4) r |

  % 5
  bes2-3 (g4) r |
  s1 |
  g4-1-. g,8-5 (a bes4-.) c-. |

  % 6
  bes8-3 (c d4-.) c-. bes-. |
  s4 s-"cresc." s2 |
  d4-1-. bes-2-. a-. g-. |

  % 7
  c2 (f,4-.) d'-4-. |
  s2. s4\f |
  f4-. f'-1-. ees-. d-. |

  % 8
  (ees2-- c-- |
  s1 |
  (c2-- ees-- |

  % 9
  d2.--) s4 |
  s1 |
  d2.--) s4 |
}

\parallelMusic #'(ve dynF vg) {

  % Measure 2
  g4-2-. bes-5-. a-. g8 (fis |
  s1 |
  r2 r4 d-5-. |

}

\score {
  \new PianoStaff <<
    \new Staff = "trebleStaff" { \keyMeter
    	         \set midiInstrument = #"piano"
                 \relative c' 
                 \repeat volta 2 { \va } 
				   \relative c'
                 \repeat volta 2 { \ve }}
    \new Dynamics { \repeat volta 2 { \dynD }
                    \repeat volta 2 { \dynF } }
    \new Staff = "bassStaff" { \keyMeter \clef bass
			       \set midiInstrument = #"piano"
                 \relative c
                 \repeat volta 2 { \vb }
		 \relative c'
	         \repeat volta 2 { \vg } } >>
  \layout { }
  \midi {  } }

