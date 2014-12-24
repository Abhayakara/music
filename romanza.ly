% Copyright (C) 2014 Edward W. Y. Lemon III

% Lilypond version of M. Moszkowski's arrangement of W. A. Mozart's
% Romanza from his Concerto for Piano in D minor.   The printed arrangement
% is copyright 1919, and hence in the public domain in the U.S.
% This Lilypond source code is under copyright.

%    This program is free software: you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation, either version 3 of the License, or
%    (at your option) any later version.
%
%    This program is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License
%    along with this program.  If not, see <http://www.gnu.org/licenses/>.

\header{
  title = "Romanza"
  composer = "Wolfgang Amadeus Mozart"
  arranger = "Arr. by M. Moszkowski"
  copyright = "July 1919"
  subtitle = "from Concerto for Piano in D minor"
}

#(set-global-staff-size 20)

% Thanks to David Nalesnik for the slanted-bracket tweak!
#(define (bound-coord bound refp)
   (if (not (= (ly:item-break-dir bound) CENTER))
       (cdr (ly:generic-bound-extent bound refp))
       (ly:grob-relative-coordinate bound refp X)))

#(define slanted-bracket
   (lambda (grob)
     (let* ((bound-L (ly:spanner-bound grob LEFT))
            (bound-R (ly:spanner-bound grob RIGHT))
            (common (ly:grob-common-refpoint bound-L bound-R X))
            (coord-L (bound-coord bound-L common))
            (coord-R (bound-coord bound-R common))
            (height (ly:grob-property grob 'edge-height))
            (shorten (ly:grob-property grob 'shorten-pair))
            (flare '(0.25 . 0.25))
            (th (ly:output-def-lookup (ly:grob-layout grob) 'line-thickness))
            (main
             (make-line-stencil 
              th 
              (+ coord-L (car flare) (car shorten)) 0
              (+ coord-R (- (cdr flare)) (cdr shorten)) (car height)))
            (wing-L (make-line-stencil
                     th
                     0 (car height)
                     (car flare) 0))
            (wing-R (make-line-stencil
                     th
                     0 (car height)
                     (cdr flare) (- (car height) (cdr height))))
            (main
             (if (= (ly:item-break-dir bound-L) CENTER)
                 (ly:stencil-combine-at-edge main X LEFT wing-L 0)
                 main))
            (main
             (if (= (ly:item-break-dir bound-R) CENTER)
                 (ly:stencil-combine-at-edge main X RIGHT wing-R 0)
                 main))
            (main
             (ly:stencil-translate-axis
              main
              (- (ly:grob-relative-coordinate bound-L common X))
              X)))
       main)))

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
  bes4.( c16 d <a c>8-1-2 d ees e-1 |
  s4\once \override Score.FootnoteItem.annotation-line = ##f
  s^\footnote "a)" #'(-1 . 1)
  \markup {
    \center-column {
      \fill-line {
	\score {
	  \new Staff
	  \with {
	    instrumentName = "a)   "
	    \omit Clef
	    \omit TimeSignature
	    \magnifyStaff 0.7
	  } {
	    \relative c' { bes'4 c32 bes a bes c16 d }
	  }
	  \layout {
	    ragged-right = ##t
	    indent = 0\cm
	  }
	}
	\null
	\score {
	  \new Staff
	  \with {
	    instrumentName = "b)   "
	    \omit TimeSignature
	    \omit Clef
	    \magnifyStaff 0.7
	  } {
	    \relative c' { d'4 ees32-4 d cis d-1 f8-5_[ d-3] }
	  }
	  \layout {
	    ragged-right = ##t
	    indent = 0\cm } } } } } ^\turn s2 |
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
  <f,_~ a c ees>2^( <f bes d>8) bes'_[_( c d] |
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
  s1 | r8 f'8~ <f~ a~>8 <f~ a~ c^~ >8 <f a c ees>8 r8 r4 |   s1 |

  % 10
  f4. \tupletNeutral \tuplet 3/2 { ees16 d c } bes8) f'8_[( g a] |  s1 |  s1 |
  s1 |
  s1 | r8 f8~ <f~ bes~>8 <f~ bes~ d^~ >8 <f bes d f>8 r8 r4 |   s1 |

  % 11
  bes4. \tuplet 3/2 { a16 g f } e8) g8_[( a bes] |  s1 |  s1 |
  s1 |
  r8 c'8~ <c~ e~>8 <c_~ e~ g^~ >8 <c e g bes>8 r8 r4 |   s1 |   s1 |

  % 12
  c4. \tuplet 3/2 { bes16 a g } f8) f8_[--( 8-- 8--] |  s1 |  s1 |
  s1 |
  s2 f'4.^( r8 |
  r8 f8~ <f~ a~>8 <f~ a~ c^~ >8 8 d'8_[ ees c_4 ] |   s1 |
  
  % 13
  f2)( e8_[ f e f] | s1 | s1 |
  s1 |
  d2)^( cis8 d cis d |
  <bes, f' bes>8\arpeggio\sustainOn r bes'4\sustainOff 4 4 | s1 |

  % 14
  g8_[ f ees d] d8)^\markup { \bold "b)" } d_[(^\turn  f d] |
  s1 |
  s1 |
  s8\> s s s\! s2 |
  ees8 d c bes bes4) r |
  bes4 r r2 | s1 |

  % 15
  bes8) r bes r f r f r |
  s1 |
  s1 |
  s1 |
  d,8^( f d f c f c f |
  <bes, f>2 <a f> |
  s1 |

  % 16
  <f,_~ a c ees>2^( <f bes d>8)
  \acciaccatura bes bes'( \acciaccatura c, c' \acciaccatura d, d' |
  s1 |
  s1 |
  s1 |
  bes,4_\finger \markup \tied-lyric #"3~1" f  bes,8) r r4 |
  s1 |
  s1 |

  % 17
  <ees, a c ees>4.\arpeggio \tuplet 3/2 { d'16 c bes } a8) (c d ees | s1 | s1 |
  s1 |
  c''8\rest <c a>8^( <c a> <d bes> <c ees>4.) f8\rest |
  f8 f'4._~ f e8\rest | s1 |

  % 18
  \break <f, bes d f>4.\arpeggio \tuplet 3/2 { ees'16 d c } bes8) f'4.-3( |
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
  \break <f, bes d f>2)_(\arpeggio e'8^[ f e f] |
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
  \break f2^\markup { \italic "cresc." } \once \stemDown g |
  r8 <bes, d>8 8 8 e'\rest <bes ees g>8 8 8 |
  s1 |
  s1 |
  aes2 g |
  bes2 ees | s1 |

  % 26
  a2( c8 bes a g |
  r8 <c, ees>8 8 <c ees> \stemDown d4_\markup {
    \override #'(on . 0.3)
    \override #'(off . 0.3)
    \draw-dashed-line #'(-2 . 5.4)
  } <bes ees> \stemNeutral |
  s1 |
  s1\f |
  f,2 <g bes'>4 ees | s1 | s1 |

  % 27
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

  % 28
  bes8_-) r r4 r8 r8( c'8^[ d] |
  s2 r8 bes'4.-1_~ |
  s1 |
  s8 s\p s4 s8 s\< s s\! |
  \stemUp d'8\sustainOn \stemNeutral bes'_[( 8\sustainOff 8] a bes aes bes |
  \stemDown bes8 \stemNeutral s s2. | s1 |

  % 29
  \break \stemUp f8 ees ees4) r8 d( <c ees> <d f> \stemNeutral |
  bes2 r8 \dotsDown bes4. \dotsNeutral |
  s1 |
  s4\> s\! s2-"poco cresc." | 
  g8 bes f bes a bes aes f |
  s1 | s1 |

  % 30
  \set fingeringOrientations = #'(left) \once \stemUp
  <ees-2 g-5>4 f4.) fis8^[( g bes] |
  r8 bes4 4 aes8_[ g des'] |
  s1 |
  s4\> s8 s\! s4\< s8 s\! |
  ees4 d) d_( ees8 e |
  \stemUp r8 bes4 bes bes4. \stemNeutral |
  s1 |

  % 31
  bes8^[ f]) r8 <bes, d>( <d f> <c ees>) r8 <a c> |
  d4 s2. |
  s1 |
  s1-"dim." |
  f8)( bes d f)
  f,( a c ees |
  \stemUp f'2 f2 \stemNeutral |
  s1 |

  % 32
  r8 bes( <f' d'> bes) r g,( <ees' bes'> g) |
  s1 | s1 |
  s1 |
  <bes d>4.) r8 <ees, bes' ees>4. r8 |
  s1 | s1 |

  % 33
  r8 f,( <bes f'> d) r f,( <a ees'> c) |
  s1 | s1 |
  s1 |
  <f bes d>4. r8 <ees f a c>4. r8 |
  s1 | s1 |

  % 34
  r8 bes( <f' d'> bes) r g,( <ees' bes'> g) |
  s1 | s1 |
  s4-"piu" s\p s2 |
  d8\sustainOn r <bes' d f> r\sustainOff ees,\sustainOn r <bes' c g'> r\sustainOff |
  s1 | s1 |

  % 35
  r8 f,( <bes f'> d) r f,( <a ees'> c |
  s1 | s1 |
  s1 |
  f8\sustainOn r <bes d f> r\sustainOff f,\sustainOn r <f' a c> r\sustainOff |
  s1 | s1 |

  % 36
  bes4) r b8( c d ees |
  r8 <d, f>8_[ 8 8] s2 |
  s1 |
  s1 |
  bes,4\sustainOn c\rest\sustainOff f8\sustainOn <ees' f>8[ 8 8]\sustainOff |
  s1 | s1 |

  % 37
  g8 f) r4 b,8( c d ees |
  s1 | s1 |
  s1 |
  bes,8\sustainOn <bes' d f>8_[ 8 8]\sustainOff f, <a' ees' f>8_[ 8 8] |
  s1 | s1 |

  % 38
  g8 f) r4 e8( <f a,> <g bes,> <a c,> |
  s1 | s1 |
  s1 |
  bes,8 <bes' d f>8_[ 8 8] f ees'8_[ d <c ees>] |
  s2 s8 \once \stemUp f'4.^~ | 
  s1 |

  % 39
  <d, bes'>8-.) bes'-. r <d, d'> r <f f'> r <d d'> |
  s1 | s1 |
  s4. s8-"un poco rit." s2 |
  <bes d>4 d f d |
  f4 s2. | s1 |

  % 40
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
      \override Staff.PianoPedalBracket.stencil = #slanted-bracket
      <<
	\new Voice = "bass-a" { \voiceOne \relative c \vba }
	\new Voice = "bass-b" { \voiceTwo \relative c \vbb }
	\new Voice = "bass-c" { \voiceThree \relative c \vbc } >> } >>
  \layout { } 
  \midi { } }

\markuplist {
  \null
  \wordwrap-lines {
  This score was typeset by Ted Lemon in 2014 for my father Ed Lemon Jr. 
  Thanks to David Nalesnik for the slanted pedal annotation to match the
  1919 score. 
  Thanks to Trevor Daniels for sample code to do a staff fragment in a
  footnote. 
  Thanks to Klaus Blum for advice on how to get the footnotes in a single
  line. 
  Thanks to Kieran MacMillan for advice on how to properly lay out parallel
  rests.
  This PDF (or printed copy) is in the public domain. } }

\paper { ragged-bottom = ##t }

\book {
  \bookOutputSuffix "bass"

  \score {
    \new PianoStaff <<
      \new Staff = "bassStaff" {
	\keyMeter \clef bass
	\set midiInstrument = #"piano"
	\set Staff.pedalSustainStyle = #'bracket
	\override Staff.PianoPedalBracket.stencil = #slanted-bracket
	<<
	  \new Voice = "bass-a" { \voiceOne \relative c \vba }
	  \new Voice = "bass-b" { \voiceTwo \relative c \vbb }
	  \new Voice = "bass-c" { \voiceThree \relative c \vbc } >> } 
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
	\tempo "Andante" 4 = 72
	\keyMeter
	\set Staff.pedalSustainStyle = #'bracket
	\override Staff.PianoPedalBracket.stencil = #slanted-bracket
	\set midiInstrument = #"piano"
	<<
	  \new Voice = "tenor-a" { \voiceOne \relative c' \vta } 
	  \new Voice = "tenor-b" { \voiceTwo \relative c' \vtb }
	  \new Voice = "tenor-c" { \voiceThree \relative c' \vtc } >> }
    >>
    \layout { 
    }
    \midi {
    }
  }
}

