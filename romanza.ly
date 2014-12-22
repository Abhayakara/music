#(set-global-staff-size 22)
\header{
  title = "Romanza"
  composer = "Wolfgang Amadeus Mozart"
  arranger = "Arr. by M. Moszkowski"
  copyright = "July 1919"
  subtitle = "from Concerto for Piano in D minor"
}

#(set-global-staff-size 21)

keyMeter = { \key bes \major \time 4/4 }

\parallelMusic #'(vta vtb vtc dynD vba vbb vbc) {
  % 1
  f'2-4( e8 f e f |
  s1 |
  s1-"c espress." |
  s8\p\< s8 s2 s8 s8\! |
  \stemUp d'2_3_5^( cis8 d cis d |
  \stemDown bes'4 bes bes bes |
  s1 |

  % 2
  g8 f ees d d4) f8.( d16 |
  s1 |
  s1 |
  s8\> s4. s4 s8\! s |
  ees8 d c bes) bes4 r |
  bes4 r r2 |
  s1 |

  % 3
  bes8) r bes r f r f r |
  s1 |
  s1 |
  s1 |
  d,8^( f d f ees f ees f |
  bes,2 <c a> |
  s1 |

  % 4
  bes4.^"a)"( c16 d <a c>8-1-2 d ees e-1 |
  s4 s^\turn s2 |
  s1 |
  s1 |
  d8 f d f f,4) r |
  bes2 s2 |
  s1 |

  % 5
  f2-1)( e8 f e f |
  s1 |
  s1 |
  s2 s8\< s s s\! |
  d''2^( cis8  d cis d |
  bes'4 bes bes bes |
  s1 |

  % 6
  g8 f ees d d4\!) f8.( d16 |
  s1 |
  s1 |
  s8\> s s s s\! s s4 |
  ees8 d c bes bes4) r |
  bes4 r r2 |
  s1 |

  % 7
  bes8) r bes r f r f-5 r |
  s1 |
  s1 |
  s1 |
  d,8( f d f c f c f |
  bes,2 <a f> |
  s1 |

  % 8
  <f,~ a c ees>2^( <f bes d>8) bes'_[_( c d] |
  s1 |
  s1 |
  s1 |
  bes,4_\finger \markup \tied-lyric #"3~1" f  bes,) r |
  s1 |
  s1 |

  % 9
  \override TupletBracket.bracket-visibility = ##t
  ees4. \stemUp \tuplet 3/2 { d16 c bes } \stemNeutral a8) c8^[( d ees]
  |  s1 |  s1 |
  s1 |
  s1 | r8 f'8~ <f~ a~>8 <f~ a~ c~ >8 <f a c ees>8 r8 r4 |   s1 |

  % 10
  f4. \tupletNeutral \tuplet 3/2 { ees16 d c } bes8) f'8_[( g a] |  s1 |  s1 |
  s1 |
  s1 | r8 f8~ <f~ bes~>8 <f~ bes~ d~ >8 <f bes d f>8 r8 r4 |   s1 |

  % 11
  bes4. \tuplet 3/2 { a16 g f } e8) g8_[( a bes] |  s1 |  s1 |
  s1 |
  r8 c'8~ <c~ e~>8 <c~ e~ g~ >8 <c e g bes>8 r8 r4 |   s1 |   s1 |

  % 12
  c4. \tuplet 3/2 { bes16 a g } f8) f8_[--( 8-- 8--] |  s1 |  s1 |
  s1 |
  s4. f'4.^( r8 r |
  r8 f8~ <f~ a~>8 <f a c >4 d'8_[ ees c_4 ] |   s1 |
  
  % 13
  f2)( e8_[ f e f] | s1 | s1 |
  s1 |
  d2)^( cis8 d cis d |
  <bes, f' bes>8\arpeggio\sustainOn r bes'4\sustainOff 4 4 | s1 |

  % 14
  g8_[ f ees d] d8)^"b)" d_[(\turn f d] | s1 | s1 |
  s8\> s s s\! s2 |
  ees8 d c bes bes4) r |
  bes4 r r2 | s1_"a)"_\markup {
    \score {
      \new Staff
      \with { \remove "Time_signature_engraver" } {
	\relative c' { bes'4 c32 bes a bes c16 d }
      }
      \layout {
	ragged-right = ##t
	indent = 0\cm } } } |

  % 15
  bes8) r bes r f r f r |
  s1 |
  s1 |
  s1 |
  d,8^( f d f c f c f |
  <bes, f>2 <a f> |
  s1 |

  % 16
  <f,~ a c ees>2^( <f bes d>8)
  \acciaccatura bes bes'( \acciaccatura c, c' \acciaccatura d, d' |
  s1 |
  s1 |
  s1 |
  bes,4_\finger \markup \tied-lyric #"3~1" f  bes,8) r r4 |
  s1 |
  s1_"b)"_\markup {
    \score {
      \new Staff
      \with { \remove "Time_signature_engraver" } {
	\relative c' { d'4 ees32-4 d cis d-1 f8-5 d-3 }
      }
      \layout {
	ragged-right = ##t
	indent = 0\cm } } } |

  % 17
  <ees, a c ees>4.\arpeggio \tuplet 3/2 { d16 c bes } a8) (c d ees | s1 | s1 |
  s1 |
  c''8\rest <c a>8^( <c a> <d bes> <c ees>4.) f8\rest |
  f8 f'4._~ f e8\rest | s1 |

  % 18
  <f bes d f>4.\arpeggio \tuplet 3/2 { ees'16 d c } bes8) f'4.-3( |
  \set fingeringOrientations = #'(right)
  s2 s8 r8 <d' g-2>8 <a a'> | s1 |
  s4 s s s-"un poco cresc." |
  \set fingeringOrientations = #'(left)
  r8\sustainOn <bes,-1 d-3>8( <d-1> <c-3 ees-2>\sustainOff <d f>8) s4. |
  \set fingeringOrientations = #'(left)
  bes8 r <bes'-4~>4 bes8 d8_[^( bes a] |
  s1 |
  
  % 19
  <bes, e bes'>4.\arpeggio \tuplet 3/2 { a'16 g f } e8) g_[( a bes] | s1 | s1 |
  s1 |
  s4 c2. |
  \set fingeringOrientations = #'(down)
  <c, g'>8)\sustainOn <g' c e>_[^( <g e'> <a f'>]\sustainOff <bes g'>4
  <a-3 f'>8 <g-4 e'>]) |
  s1 |

  % 20
  <c, f a c>4.\arpeggio
  \tuplet 3/2 { bes'16 a g } f8)^\markup { \italic "pochiss. rit." } f_[(--_\markup { \italic "dim." } 8-- 8--] |
		      s1 | s1 |
  s4 s s8 s s4 |
  r8\sustainOn <a ees' f>8 8 <bes ees g>\sustainOff 
  <c ees a>\sustainOn f,-1_[ ees c]\sustainOff |
  f2 r8 s s s |
  s1 |

  % 21
  <f, bes d f>2)_(\arpeggio e'8^[ f e f] |
  s8 s4.^\markup { \italic "a tempo" } bes4 4 | s1 |
  s1\p |
  d8(\sustainOn f bes d cis\sustainOff d cis d |
  bes,4 r bes' bes | s1 |

  % 22
  g8^[ f ees d])^\markup { \bold "b)"} d(\turn d f d |
  bes4 r r2 | s1 |
  s1 |
  ees8  d c bes bes4) r |
  bes4 r r2 | s1 |

  % 23
  bes4)-\finger \markup \tied-lyric #"2~5" e\rest f, e'\rest | s1 |
  g8\rest bes_[\( d bes]\) a\rest a_[\( c a]\) |
  s1 |
  r8 d,\( f d\) r c\( ees c\) |
  bes,2 f | s1 |
  
  % 24
  d,2 \once \stemDown ees_1 |
  r8 <g, b>8 8 8 c'\rest <c ees>8 8 8 |
  s1 |
  s1 |
  f2 ees |
  g2 c | s1 |

  % 25
  f2^\markup { \italic "cresc." } \once \stemDown g |
  r8 <bes, d>8 8 8 e'\rest <bes ees g>8 8 8 |
  s1 |
  s1 |
  aes2 g |
  bes2 ees | s1 |

  % 25
  a2( c8 bes a g |
  r8 <c, ees>8 8 <c ees> \stemDown d4_\markup {
    \override #'(on . 0.3)
    \override #'(off . 0.3)
    \draw-dashed-line #'(-2 . 5.4)
  } <bes ees> \stemNeutral |
  s1 |
  s1\f |
  f,2 <g bes'>4 ees | s1 | s1 |

  % 26
  \tuplet 3/2 { f8 bes_5 a_5 }
  \tuplet 3/2 { g_4 f ees }
  \tuplet 3/2 { \set fingeringOrientations = #'(left) <d-2> ees_3 f_5 }
  \tuplet 3/2 { ees d c } |
  \stemDown bes2 bes4 a4 \stemNeutral | s1 |
  s1 |
  d4 \stemDown ees f f \stemNeutral |
  \override TupletBracket.bracket-visibility = ##t
  ees4\rest \tupletUp \stemUp \tuplet 3/2 { ees8 f g} f4 \tuplet 3/2 { c8 d ees } \stemNeutral \tupletNeutral|
  s1 |

  % 27
  bes8_-) r r4 r8 r8( c'8^[ d] |
  s2 r8 bes'4.-1_~ |
  s1 |
  s8 s\p s4 s8 s\< s s\! |
  \stemUp d'8\sustainOn \stemNeutral bes'_[( 8\sustainOff 8] a bes aes bes |
  \stemDown bes8 \stemNeutral s s2. | s1 |

  % 28
  \stemUp f8 ees ees4) r8 d( <c ees> <d f> \stemNeutral |
  bes2 r8 \dotsDown bes4. \dotsNeutral |
  s1 |
  s4\> s\! s2-"poco cresc." | 
  g8 bes f bes a bes aes f |
  s1 | s1 |

  % 29
  \set fingeringOrientations = #'(left) \once \stemUp
  <ees-2 g-5>4 f4.) fis8^[( g bes] |
  r8 bes4 4 aes8_[ g des'] |
  s1 |
  s4\> s8 s\! s4\< s8 s\! |
  ees4 d) d_( ees8 e |
  \stemUp r8 bes4 bes bes4. \stemNeutral |
  s1 |

  % 30
  bes8^[ f]) r8 <bes, d>( <d f> <c ees>) r8 <a c> |
  d4 s2. |
  s1 |
  s1-"dim." |
  f8)( bes d f)
  f,( a c ees |
  \stemUp f'2 f2 \stemNeutral |
  s1 |

  % 31
  r8 bes( <f' d'> bes) r g,( <ees' bes'> g) |
  s1 | s1 |
  s1 |
  <bes d>4.) r8 <ees, bes' ees>4. r8 |
  s1 | s1 |

  % 32
  r8 f,( <bes f'> d) r f,( <a ees'> c) |
  s1 | s1 |
  s1 |
  <f bes d>4. r8 <ees f a c>4. r8 |
  s1 | s1 |

  % 33
  r8 bes( <f' d'> bes) r g,( <ees' bes'> g) |
  s1 | s1 |
  s4-"piu" s\p s2 |
  d8\sustainOn r <bes' d f> r\sustainOff ees,\sustainOn r <bes' c g'> r\sustainOff |
  s1 | s1 |

  % 34
  r8 f,( <bes f'> d) r f,( <a ees'> c |
  s1 | s1 |
  s1 |
  f8\sustainOn r <bes d f> r\sustainOff f,\sustainOn r <f' a c> r\sustainOff |
  s1 | s1 |

  % 35
  bes4) r b8( c d ees |
  r8 <d, f>8_[ 8 8] s2 |
  s1 |
  s1 |
  bes,4\sustainOn c\rest\sustainOff f8\sustainOn <ees' f>8[ 8 8]\sustainOff |
  s1 | s1 |

  % 36
  g8 f) r4 b,8( c d ees |
  s1 | s1 |
  s1 |
  bes,8\sustainOn <bes' d f>8_[ 8 8]\sustainOff f, <a' ees' f>8_[ 8 8] |
  s1 | s1 |

  % 37
  g8 f) r4 e8( <f a,> <g bes,> <a c,> |
  s1 | s1 |
  s1 |
  bes,8 <bes' d f>8_[ 8 8] f ees'8_[ d <c ees>] |
  s2 s8 \once \stemUp f'4.^~ | 
  s1 |

  % 38
  <d, bes'>8-.) bes'-. r <d, d'> r <f f'> r <d d'> |
  s1 | s1 |
  s4. s8-"un poco rit." s2 |
  <bes d>4 d f d |
  f4 s2. | s1 |

  % 39
  <bes d f bes>1^\fermata \bar "|." |
  s1 | s1 |
  s2 s2\pp |
  <bes f'>2\sustainOn <bes, bes,>\sustainOff_\fermata |
  s1 | s1 |
  
}

\score {
  \new PianoStaff <<
    \new Staff = "trebleStaff" {
      \tempo "Andante" 4 = 72
      \keyMeter
      \set midiInstrument = #"piano"
      <<
	\new Voice = "tenor-a" { \voiceOne \relative c' \vta } 
	\new Voice = "tenor-b" { \voiceTwo \relative c' \vtb }
	\new Voice = "tenor-c" { \voiceThree \relative c' \vtc } >> }
    \new Dynamics { \dynD }
    \new Staff = "bassStaff" {
      \keyMeter \clef bass
      \set midiInstrument = #"piano"
      \set Staff.pedalSustainStyle = #'bracket
      <<
	\new Voice = "bass-a" { \voiceOne \relative c \vba }
	\new Voice = "bass-b" { \voiceTwo \relative c \vbb }
	\new Voice = "bass-c" { \voiceThree \relative c \vbc } >> } >>
  \layout { } 
  \midi { } }


