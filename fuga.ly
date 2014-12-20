#(set-global-staff-size 22)
\header{
  title = "Fuga"
  composer = "Georg Friedrich Händel"
}

#(set-global-staff-size 21)

keyMeter = { \key g \major \time 4/4 }

\parallelMusic #'(vta vtb vtc dynD vb) {
  % Measure 1
  g'4.-2 b8(\noBeam a_[ d,] d'-5[ c] |
  s1 |
  s1 |
  s1\mf |
  g4-. g'2_2( fis4 |

  % 2
  b8 g) g'2->( fis4 |
  s1 |
  s1 |
  s1 |
  g4.) b8_1( a[ d,] d'[ c] |

  %3
  g8_[ d] e_[ b] cis-4_[ a] d_[ fis,-2] |
  s1 |
  s1 |
  s1 |
  b4) g2_2( fis8_3_[ b_1] |

  %4
  \break g8[ b a g] fis[ a]) d4->-5~ |
  s1 |
  s1 |
  s4 s s s\p |
  e,4_5) cis'_3( d4.) d,8_4( |

  %5
  d4 c2-4 b4-3( |
  s1 |
  s1 |
  s1 |
  e8_3[ d e fis] g[ d] g[ b,_3] |

  % 6
  a2-2 g4-1) g'->-4~ |
  s1 |
  s1 |
  s4 s s s\mf |
  c8_2[ a d c] b[ a]) r e'_4( |

  % 7
  \break g4 f2-3 e4-5( |
  s1 |
  s1 |
  s1 |
  a8_1[ g_4 a b] c_1[ g_3 a_2 e_5] |

  % 8
  d2 c4.-3) e8-3( |
  a'4 b e,4. s8 |
  s1 |
  s1 |
  f8_2_[ d_4 g g,] c4) c'_2~( |

  % 9
  d8_[ g,] g'_[ f] e-3_[ d]) c4->-4~( |
  s1 |
  s1 |
  s4 s s s\p |
  c4 b c) r8 e,_4( |

  % 10
  \break c4 b a) d->-4~( |
  s1 |
  s1 |
  s4 s s s-"cresc." |
  fis8_3[ d] g2 fis8_3[) b_1]( |

  % 11
  d4 c b4.) e8-4( |
  s1 |
  s1 |
  s1 |
  gis8[ e] a2_1 g4~ |

  % 12
  cis8-2_[ a-1] d2 c4 |
  s1 |
  s1 |
  s1 |
  g4 fis e8_4[ fis16 g] a8[ g] |

  % 13
  \break d4) a8-2[( b] c-1_[ e-4 d c] |
  s1 |
  s1 |
  s4 s\mf s2 |
  fis8_[) d_5( fis g] a4 fis4 |

  % 14
  b8_[ d g fis] e_[ d c b] |
  s1 |
  s1 |
  s1 |
  g4_2) b_3( c8_2[ b_3 a_1 g] |

  % 15
  a4-2) d2-5 c4~ |
  s1 |
  s1 |
  s4 s-"cresc." s2 |
  fis8_3[ e fis_2 d] e[ d e fis] |

  % 16
  \break c4 b( a2 |
  s1 |
  s1 |
  s1 |
  g8_1[ d_3 e b] c_2[ a d c] |
  
  % 17
  g4) g'8-5_[( fis] e[ d c b-2] |
  s1 |
  s1 |
  s4 s\f s2 |
  b8[ a] g4) c8_2[( b] a4 |

  % 18
  a8_[-1 fis'-4 g-5 b,-1] a4. g8 |
  s2 g4 fis |
  s2 d |
  s1 |
  d8_1[ c b c] d4) d,-> |

  % 19
  g1)\fermata \bar ":|." |
  d1 |
  b1 |
  s1 |
  g1->\fermata |

%  a'8-1 fis'-4 g-5 b,-1 a8~ a8~ a8 g8 |
%  s2 g'8~ g8 fis4 |
%  s2 d8~ d8~ d8~ d8 |
%  s1 |
%  d8 c b c d4 d,4 |
}

\score {
  \new PianoStaff <<
    \new Staff = "trebleStaff" {
      \keyMeter
      \set midiInstrument = #"piano"
      << { \relative c' \vta } 
         { \relative c' \vtb }
         { \relative c' \vtc } >> }
    \new Dynamics { \dynD }
    \new Staff = "bassStaff" {
      \keyMeter \clef bass
      \set midiInstrument = #"piano"
      \relative c \vb } >>
  \layout { } }

\book {
  \bookOutputSuffix "treble"

  \score {
    \new PianoStaff <<
      \new Staff <<
	\keyMeter

	\set Staff.midiInstrument = #"piano"
	<< { \relative c' \vta } 
	   { \relative c' \vtb }
	   { \relative c' \vtc } >>
      >>
    >>
    \layout { 
    }
    \midi {
    }
  }
}

