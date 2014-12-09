
#(set-global-staff-size 22)
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
  r2 r4 d_5-. |

  % Measure 3
  g2-2 d4) r |
  s1 |
  g4_2-. a_1-. bes_2-. (a8_1 g |

  % Measure 4
  a'8-2 (bes c4-.) bes-. a-. |
  s1 |
  fis2 d4) r |

  % 5
  bes2-3 (g4) r | \break
  s1 |
  g4_1-. g,8_5 (a bes4-.) c-. |

  % 6
  bes8-3 (c d4-.) c-. bes-. |
  s4 s-"cresc." s2 |
  d4_1-. bes_2-. a-. g-. |

  % 7
  c2 (f,4-.) d'-4-.\( |
  s2. s4\f |
  f4-. f'_1-. ees-. d-.\( |

  % 8
  ees2-- c-- |
  s1 |
  c2-- ees-- |

  % 9
  d2.--\)  |
  s2. |
  d2.--\) |
}

\parallelMusic #'(ve dynF vg) {
  %10 
  d'4-3-. | \break
  s4\p |
  r4 |

  %11
  d8-2 (ees f4-.) ees-. d-. |
  s1 |
  r2 r4 bes'_4 |

  %12
  ees2-3 (c4) r |
  s1 |
  c4 (d ees-.) c_2-. |

  %13
  c8-2 (d ees4-.) d c |
  s1 |
  a2_3 (f4) r |

  %14
  d2-4 (bes4-2) r |
  s1 |
  bes4_3 (c d-.) bes |

  %15
  bes8-2 (c d4-.) c-. bes-. | \break
  s4 s-"cresc." s2 |
  g2_5-- (ees'_1) |

  %16
  a8 (bes c4-.) bes-. a-. |
  s1 |
  fis,2_5-- (d') |

  %17
  bes4-3-. a8 (bes g4-1-.) g' |
  s1 |
  g,2_2-- (ees_4) |

  %18
  fis2-4 (d4) r |
  s1 |
  d4_1-. c8 (d bes4-.) g-. |

  %19
  g4-3-. a-. bes8 (a g fis | \break
  s1\f |
  ees'4_3-. c-. d_5-. d'-. |

  %20
  g2-4 d4) r |
  s1 |
  ees4_2 (d8_1 c bes4-.) g-. |

  %21
  ees8-3 (d c bes-3 a4. g8 |
  s1 |
  c4-2 (a) d_1-. d,-. |

  %22
  g2.--) |
  s2. |
  g2.-- |
}

\score {
  \new PianoStaff <<
    \new Staff = "trebleStaff" {
      \keyMeter
      \set midiInstrument = #"piano"
      \relative c' 
      \repeat volta 2 { \va } 
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

