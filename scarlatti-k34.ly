#(set-global-staff-size 19)
\header{
  title = "Sonata in D Minor"
  composer = "Domenico Scarlatti"
  opus = "K. 34"
}

keyMeter = { \key d \minor \time 3/4 }

\parallelMusic #'(va dynD vb) {
  % Measure 1
  d'4-2 a'8 (\once \override Fingering.padding = 0.2 f-4 d a |
  s2. |
  d4_5 f r |

  % Measure 2
  bes4) g'8 (\once \override Fingering.font-size = -6 e-4 c g |
  s2. |
  g4_1 c, e |

  % Measure 3
  a4) e'8 (bes-3 a g |
  s2. |
  f4_1 cis_3 (<cis a>) |

  % Measure 4
  g4-3 f8 e f4) |
  s2. |
  <d_1 a'_4>4 a_2 d, |

  % Measure 5
  d'-3 f8 (d-4 bes-2 a | \break
  s4\mp s s |
  d'4_5 d' f,_3 |

  % Measure 6
  gis4-2) f'8-5_ (d f a, |
  s4 s_"cresc." s |
  e4_1 d c_5 |

  % Measure 7
  bes4) f'8-5 (d-4 bes a~ |
  s2. |
  d4 d'_1 f,_3 |

  % Measure 8
  a16-3 gis-2 a gis a gis fis gis a4-1) |
  % gis2^\trill \acciaccatura { fis16 gis } a4) |
  s2. |
  e4_1 b c |

  % Measure 9
  b16-2 (c d8 c b a4) | \break
  s2.\f |
  d4_3 (e f) |

  % Measure 10
  b16 (c d8 c b a4) |
  s2.\p |
  d'4 (e f) |

  % Measure 11
  f'16-4 (e d8 c bes-4 a gis |
  s4\mp\< s s\! |
  d,4_2 e e, |

  % Measure 12
  gis2-2 a4) |
  s4\> s s\! |
  a'4_1 e_2 a, |
}

\parallelMusic #'(ve dynF vg) {
  % Measure 13
  c'4-2 f8-5 (c-3 a f | \break
  s4\mf s2 |
  a4_2 f a |

  % Measure 14
  d'4-4) f8-5 (d bes a |
  s2. |
  bes4 bes, bes' |

  % Measure 15
  bes4) g'8-5 (e c bes-2 |
  s2. |
  g4_2 c, e |

  % Measure 16
  bes4-3 a8\prall g a4) |
  s2. |
  f4_1 c_2 f, |

  % Measure 17
  a'4-5 d,8 (ees b c) | \break
  s4\p s2 |
  fis'2_2-- r4 |

  % Measure 18
  a'4-5 d,8 (ees b c) |
  s4\< s8 s s s\! |
  fis2_2-- r4 |

  % Measure 19
  \acciaccatura { c16-2 d } ees4 (d8-2 c bes-3 a |
  s4 s2 |
  fis4 d fis |

  % Measure 20
  bes4 a8 bes g4) |
  s4\> s4 s\! |
  g4 d_2 g, |

  % Measure 21
  g'4-3 bes8 (g ees-3 d | \break
  s4\mp s2 |
  r4 g' bes,_4 |

  % Measure 22
  cis4-2) bes'8 (g a d, |
  s4 s_"cresc." s |
  a4 g' f |

  % Measure 23
  ees4) bes'8 g (ees_2 d~ |
  s2. |
  g,4 g' g, |

  % Measure 24
  d16-3 cis-2 d cis d cis b cis d4) |
  % cis2^\trill \acciaccatura { b16 cis } d4) |
  s4\< s s\! |
  a'4 e f |

  % Measure 25
  e16 (f g8 f e d4) | \break
  s2.\f |
  g4 (a bes) \clef treble |

  % Measure 26
  e16 (f g8 f e d4) |
  s2.\p |
  g'4 (a bes) \clef bass |

  % Measure 27
  bes'16-4 (a g8 f ees-4 d cis |
  s2.\f |
  g,4 a a, |

  % Measure 28
  cis2-- d4) |
  s4\> s s\! |
  d_1 a_2 d, |
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

