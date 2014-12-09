\header{
  title = "It Came Upon A Midnight Clear"
  composer = "Traditional English Melody"
  arranger = "A Sullivan"
  poet = "Edmund Hamilton Sears (1810-1876)"
}

keyMeter = { \key f \major \time 4/4 }

\parallelMusic #'(sop alt tenhi ten bass) {
% 0
\partial 4 f8 g |
\partial 4 f4 |
\partial 4 s4 |
\partial 4 a8 bes |
\partial 4 f4 |

% 1
a4 g f g8 a |
f4 e f d8 f |
s1 |
c4 c a d8 c |
f4 c f bes8 a |

% 2
bes4 a g c |
e4 f e e |
s1 |
bes4 c c c |
g4 f c bes' |

% 3
c4 a bes8 c d4 |
f4 f f f |
s1 |
c4 c bes bes |
a f d bes |

% 4
c2. a8 bes |
f2. f4 |
s1 |
a2. c4 |
f'2. f4 |

% 5
\break c4 c a f |
e4 e f f |
s1 |
c4 g f a |
c4 c f f |

% 6
bes4 a g f8 g |
f4 f f e |
d4 c c s|
s4 s s a |
bes f c f |

% 7
a8 bes c4 a g |
f4 c f e |
s1 |
f4 f c bes |
d a8 bes c4 c |

% 8
f2. f4 |
f2. d4 |
a2. s4 |
s2. f'4 |
f,2. d'4 |

% 9
\break e4 d e g |
ces4 d d ces4 |
s1 |
g4 a bes a |
e4 f g a |

% 10
f4. e8 d4 a' |
d4. cis8 d4 f |
s1 |
a4. g8 f4 b |
d,4. d8 d4 d |

% 11
g4 f e d |
e4 d c b |
s1 |
c4 a g f |
e4 f g g, |

% 12
c2. c4 |
c2. c4 |
s1 |
e2. c4 |
c2. c4 |

% 13
\break c'4 bes a g8 a |
a'4 g fis e8 f |
c4 c s s |
s4 s c' bes8 a |
a4 bes8 c d4 d |

% 14
bes4 a g f8 g |
g8 e f4 e f |
s4 c s s |
g4 s c a |
g,4 a8 bes c4 d |

%16
a8 bes c4 a g |
f8 g a4 f e |
c4. c8 s2 |
s2 c4 bes |
a4 g8 f c'4 c |

%17
f2. |
f2. |
a2. |
s2. |
f,2. |

}

\score {
  \new PianoStaff <<
    \new Staff = "trebleStaff" <<
      \keyMeter
      \set midiInstrument = #"piano"
      \new Voice = "soprano" {
	\voiceOne
	\relative c' \sop } 
      \new Voice = "alto" {
	\voiceTwo
	\relative c' \alt }
      \new Voice = "tenorHigh" {
	\voiceTwo
	\relative c'
	\tenhi } >>
    \new Staff = "bassStaff" <<
      \keyMeter \clef bass
      \set midiInstrument = #"piano"
      \new Voice = "tenor" {
	\voiceThree
	\relative c'
	\ten }
      \new Voice = "bass" {
	\voiceFour	
	\relative c
	\bass } >> >>
  \layout { }
  \midi {  } }

