
#(set-global-staff-size 22)
\header{
  title = "Impertinence"
  composer = "Georg Friedrich Händel"
}

keyMeter = { \key g \minor \time 2/2 }

\parallelMusic #'(vta vtb dynD vb) {
  % Measure 0
  \partial 4 d4-1\staccato |
  \partial 4 s4 |
  \partial 4 s4\mf |
  \partial 4 r4 |

  % Measure 1
  g4-2( bes a-3) g8-3( fis |
  s1 |
  s1 |
  r2 r4 d_5-. |

  % Measure 2
  g2-2--) d2--  |
  s1 |
  s1 |
  g4_4\<( a bes\!) a8_1( g |

  % Measure 3
  a'8-2( bes c4-.) bes-. a-. |
  s1 |
  s8 s\> s2. |
  fis2--) d2-- |

  % 4
  bes2-3-- g2-- |
  s1 |
  s4\! s2. |
  g4-. g,8_4( a bes4-.) c-._2 |

  % 5
  bes8-2( c d4-.) c-.-4 bes-. |
  s1 |
  s2 s\< |
  d4-. bes_2-. a-. g-. |

  % 6
  <a c>2( f4-.) d'-4-. |
  s1 |
  s2. s4\! |
  f4-. f'-. ees-. d-. |

  % 7
  \stemUp ees2^> \tuplet 3/2 { c8^> d c } d16 c bes c |
  \stemDown g'2 g |
  s2\f s2 |
  c2_4-> \stemUp <ees g_1_2>_> \stemNeutral |

  % 8
  d2.^> \stemNeutral |
  fis2. \stemNeutral |
  s2. |
  \stemUp <d a'>2._1_3_> \stemNeutral |
}

\parallelMusic #'(ve dynF vg) {
  %8
  d'4-3-. | \break
  s4\p |
  r4 |

  %9
  d8-2 (ees f4-.) ees-. d-. |
  s1 |
  r2 r4 bes'_3_. |

  %10
  ees2-4-- c2-2-- |
  s1 |
  c4_4( d ees-.) c_1-. |

  %11
  c8-2( d ees4-.) d-. c-. |
  s1 |
  a2_2-- f2_4-- |

  %12
  d2-4-- bes-2-- |
  s1 |
  bes4_4( c d-.) bes-. |

  %13
  bes8-2( c d4-.) c-. bes-. |
  s4 s-"cresc." s2 |
  g2_5-- ees'_2-- |

  %14
  a8-2( bes c4-.) bes-. a-. |
  s1 |
  fis,2_5-- d'_2-- |

  %15
  bes4-3-. a8 (bes g4-.) g'-. |
  s1 |
  g,2_2-- ees-- |

  %16
  <fis d a>2^- <d g,>^- |
  s1 |
  d4_2-. c8(_2 d bes4-.) g-. |

  %19
  g4-3( a-4 bes8-5 a g fis) |
  s1\f |
  ees'4_2-. c_4-. d_3-. d'_2-. |

  %20
  g2-- d-- |
  s1 |
  ees4_1-. d8_1( c bes4-.) g_5-. |

  %21
  ees8-5( d c bes
  \tupletDown \tuplet 6/4 { a16-1^[ bes-3 a-2 bes a bes] } \tupletNeutral
  a8) r16 g |
  s1 |
  c4_2-. a_4-. <d fis>_2-. d,_5-. |

  %22
  g2.)^\fermata |
  s2. |
  g2._2^\fermata |
}

\score {
  \new PianoStaff <<
    \new Staff = "trebleStaff" {
      \tempo "Vivace" 4 = 120
      \keyMeter
      \set midiInstrument = #"piano"
      \repeat volta 2 {
	<< \new Voice = "treble-a" { \relative c' \vta }  
	   \new Voice = "treble-b" { \relative c' \vtb } >> }
      \relative c'
      \repeat volta 2 { \ve }}
    \new Dynamics { \repeat volta 2 { \dynD }
                    \repeat volta 2 { \dynF } }
    \new Staff = "bassStaff" {
      \keyMeter \clef bass
      \set midiInstrument = #"piano"
      \relative c
      \repeat volta 2 { \vb }
      \relative c
      \repeat volta 2 { \vg } } >>
  \layout { }
  \midi {  } }

\book {
  \bookOutputSuffix "bass"

  \score {
    \new PianoStaff <<
      \new Staff = "bassStaff" {
	\tempo "Vivace" 4 = 120
	\keyMeter \clef bass
	\set midiInstrument = #"piano"
	\relative c \vb
	\relative c \vg
      }
    >>
    \layout { 
    }
    \midi {
    }
  }
}

\book {
  \bookOutputSuffix "treble"

  \score {
    \new PianoStaff <<
      \new Staff = "trebleStaff" {
	\tempo "Vivace" 4 = 120
	\keyMeter
	\set midiInstrument = #"piano"
	<< \new Voice = "treble-a" { \relative c' \vta }  
	   \new Voice = "treble-b" { \relative c' \vtb } >> }
    >>
    \layout { 
    }
    \midi {
    }
  }
}
