\header{
  title = "It Came Upon A Midnight Clear"
  composer = "Traditional English Melody (Noel)"
  arranger = "Arranged by A. Sullivan"
  poet = "Edmund Hamilton Sears (1810-1876)"
}

keyMeter = { \key f \major \time 4/4 }

verseOne = \lyricmode {
  It _ came u- pon the _ mid- night clear,
  That glor- ious song _ of old,
  From _ an- gels ben- ding near the earth,
  To _ touch _ their harps of gold:
  Peace on the earth, good- will to men,
  From heav'n's all- gra- cious King.
  The world in so- lemn _ still- ness lay,
  To _ hear _ the an- gels sing. }

verseTwo = \lyricmode {
  Still _ through the clo- ven _ skies they come,
  With peace- ful wings _ un- furled,
  And _ still their heav'n- ly mu- sic floats
  O'er _ all _ the wea- ry world;
  A- bove its sad and low- ly plains,
  They bend on hov'r- ing wing,
  And e- ver o'er its _ Ba- bel sounds
  The _ bless _ -ed an- gels sing. }

verseThree = \lyricmode {
  Yet _ with the woes of _ sin and strife
  The world has suf- _ fered long;
  Be- _ neath the an- gel- strain have rolled
  Two _ thou- _ sand years of wrong;
  And man, at war with man, hears not
  The love- song which they bring;
  O hush the noise, _ ye men of strife,
  And _ hear _ the an- gels sing. }


verseFour = \lyricmode {
  And _ ye, be- neath life's _ cru- shing load,
  Whose forms are ben- _ ding low,
  Who _ toil a- long the cli- mbing way
  With _ pain- _ ful steps and slow,
  Look now! for glad and gold- en hours
  come swift- ly on the wing.
  O rest be- side _ the wea- ry road,
  And _ hear _ the an- gels sing!
}

verseFive = \lyricmode {
  For _ lo!, the days are _ hast'n- ing on,
  By pro- phet bards _ fore- told,
  When _ with the e- ver- cir- cling years
  Comes _ round _ the age of gold
  When peace shall o- ver all the earth
  Its an- cient splen- dors fling,
  And the whole world _ give back the song
  Which _ now _ the an- gels sing.
}


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
c2. \bar "" \break a8 bes |
f2. f4 |
s2. s4 |
a2. c4 |
f'2. f4 |

% 5
c4 c a f |
e4 e f f |
s1 |
c4 g f a |
c4 c d d |

% 6
bes4 a g f8 g |
f4 f e e |
d4 c c s|
s4 s s a |
bes f' c f |

% 7
a8 bes c4 a g |
f4 c f e |
s1 |
f4 f c' bes |
d a8 bes c4 c |

% 8
f2. \bar "" \break f4 |
f2. d4 |
a2. s4 |
s2. f4 |
f,2. d'4 |

% 9
e4 d e g |
cis4 d d cis4 |
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
c2. \bar "" \break c4 |
c2. c4 |
s2. s4 |
e2. c4 |
c2. c4 |

% 13
c'4 bes a g8 a |
a'4 g fis e8 fis |
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
	\bass } >>
    \new Lyrics \lyricsto "soprano" \verseOne
    \new Lyrics \lyricsto "soprano" \verseTwo
    \new Lyrics \lyricsto "soprano" \verseThree
    \new Lyrics \lyricsto "soprano" \verseFour
    \new Lyrics \lyricsto "soprano" \verseFive
  >> 
 \layout {
   \context {
     \Lyrics
     \override LyricText #'font-size = #-1
   } }
  \midi {  } }

\book {
  \bookOutputSuffix "SATB"

  \score {
    \new ChoirStaff <<
      \new Staff <<
	\keyMeter

	\set Staff.midiInstrument = #"choir aahs"
	\set Staff.midiMinimumVolume = #0.8
	\set Staff.midiMaximumVolume = #1.0

	\new Voice = "soprano" {
	  \relative c' \sop }
	\new Lyrics \lyricsto "soprano" \verseOne
	\new Lyrics \lyricsto "soprano" \verseTwo
	\new Lyrics \lyricsto "soprano" \verseThree
%	\new Lyrics \lyricsto "soprano" \verseFour
	\new Lyrics \lyricsto "soprano" \verseFive
      >>
      \new Staff <<
	\keyMeter

	\set Staff.midiInstrument = #"choir aahs"
	\set Staff.midiMinimumVolume = #0.8
	\set Staff.midiMaximumVolume = #1.0

	\new Voice = "alto" {
	  \relative c' \alt }
      >>
      \new Staff <<
	\clef "treble_8"
	\keyMeter

	\set Staff.midiInstrument = #"acoustic guitar (steel)"
	\set Staff.midiMinimumVolume = #0.2
	\set Staff.midiMaximumVolume = #0.4

	\new Voice = "tenorHigh" {
	  \voiceOne
	  \relative c'
	  \tenhi } 
	\new Voice = "tenor" {
	  \voiceOne
	  \relative c'
	  \ten }
	\new Lyrics \lyricsto "soprano" \verseOne
	\new Lyrics \lyricsto "soprano" \verseTwo
	\new Lyrics \lyricsto "soprano" \verseThree
%	\new Lyrics \lyricsto "soprano" \verseFour
	\new Lyrics \lyricsto "soprano" \verseFive
      >>
      \new Staff <<
	\keyMeter

	\set Staff.midiInstrument = #"choir aahs"
	\set Staff.midiMinimumVolume = #0.8
	\set Staff.midiMaximumVolume = #1.0

	\new Voice = "bass" <<
	  \clef "bass"
	  \new Voice = "bass" {
	    \relative c
	    \bass }
	>>
      >>
    >>
    \layout { 
      \context {
	\Lyrics
	\override LyricText #'font-size = #-1
      }
    }
    \midi {
    }
  }
}