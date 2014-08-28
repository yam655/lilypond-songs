﻿\version "2.14.2"
\include "util.ly"
\header{ tagline = ""}
\paper {
  print-all-headers = ##t
  ragged-right = ##f
  %print-all-headers = ##t
  paper-height = 11\in
  paper-width = 8.5\in
  indent = 0\in
  %system-system-spacing = #'((basic-distance . 10) (padding . 0))
  system-system-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . -3)
       (stretchability . 50))
  score-markup-spacing =
    #'((basic-distance . 0)
       (minimum-distance . 0)
       (padding . -3)
       (stretchability . 50))
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  two-sided = ##t
  inner-margin = 1\in
  outer-margin = 0.75\in
  top-margin = 0.26\in
  bottom-margin = 0.25\in
  first-page-number = #42
  print-first-page-number = ##t
  headerLine = ""
  oddHeaderMarkup = \markup\fill-line{
     \override #'(font-name . "Garamond Premier Pro")\abs-fontsize #12.5
     \combine 
        \fill-line{"" \on-the-fly #print-page-number-check-first
        \oldStylePageNum""
        }
        \fill-line{\headerLine}
  }
  evenHeaderMarkup = \markup {
     \override #'(font-name . "Garamond Premier Pro")\abs-fontsize #12.5
     \combine
        \on-the-fly #print-page-number-check-first
        \oldStylePageNum""
        \fill-line{\headerLine}
  }
}
#(set-global-staff-size 18) \paper{ #(define fonts (make-pango-font-tree "Garamond Premier Pro" "Garamond Premier Pro" "Garamond Premier Pro" (/ 18 20))) }
global = {
  \key aes \major
  \time 4/4
  \dynamicUp
  %\set crescendoSpanner = #'dashed-line
  %\set midiInstrument = "recorder"
  \autoBeamOff
  \override DynamicTextSpanner #'style = #'none
}

sopMusic = \relative c' {
	\partial 4 ees4 |
  bes'4. bes8 aes g f ees |
  aes2*1/16 \teeny ees8*3/4 aes4. \normalsize b4\rest \bar"" aes8[ bes] |
  c4. c8 des c bes aes |
  bes2 bes4\rest \bar"" ees, |

  f4. g8 aes8. bes16 aes8. f16 |
  ees2*1/16 \teeny ees8*3/4 aes4. \normalsize bes4\rest \bar"" aes8[ aes] |
  \tieDashed g4.~ g8~ g g f g \tieSolid |
  aes2 bes4\rest \bar"" c |

  ees4. ees8 des c bes aes |
  f4.( g8 bes[ aes g]) f |
  ees4. aes8 g g f g |
  aes2 bes4\rest \bar"|."
}
sopWords = \lyricmode {
  \set stanza = #"1. "
  \set ignoreMelismata = ##t
	With all my soul then let us part, "" ""
  Since _ both are anx -- ious to be free,
  And I will send you home your heart, "" ""
  If __ _ you will send back mine to me,
  \unset ignoreMelismata
  And I will send you home your heart, __
  If you will send back mine to me.
}

sopWordsII = \lyricmode {
  \set stanza = #"2. "
  \set ignoreMelismata = ##t
  We’ve had some hap -- py hours to -- \skip1 geth -- er,
  But _ Joy must of -- ten change its wing,
  And spring would be but gloom -- y "" wea -- ther,
  If __ _ we had no -- thing else but spring.
  \unset ignoreMelismata
  And spring would be but gloom -- y wea -- ther,
  If we had nought else but spring.
}

sopWordsIII = \lyricmode {
  \set stanza = #"3. "
  \set ignoreMelismata = ##t
  Fare -- well, and when some fu -- ture "" lov -- er
  Shall _ claim the heart which I re -- sign,
  And in ex -- ult -- ing joy dis -- \skip1 cov -- er
  All the charms __ _ _ that once were mine,
  \unset ignoreMelismata
  And in ex -- ult -- ing joy dis -- cov -- er
  All the charms that once were mine.
}

sopWordsIV = \lyricmode {
  \set stanza = #"4. "
  \set ignoreMelismata = ##t
  I think I should be sweet -- ly blest, "" ""
  If _ in a fond im -- per -- fect sigh,
  You’d say while to his bo -- som prest, "" ""
  He __ _ loves not half so well as I.
  \unset ignoreMelismata
  And say while to his bo -- som prest, __
  He loves not half so well as I.
}

sopWordsV = \lyricmode {
  \set stanza = #"5. "
}

altoMusic = \relative c' {
  ees4 |
  g4. g8 f ees des ees |
  c2*1/16 \teeny c8*3/4 c4. \normalsize s4 c8[ des] |
  ees4. ees8 ees ees ees ees |
  des2 s4 des |

  des4. ees8 f8. f16 f8. des16 |
  c2*1/16 \teeny c8*3/4 c4. \normalsize s4 c8[ c] |
  \tieDashed des4.~ des8~ des des des des \tieSolid |
  c2 s4 ees4 |

  aes4. aes8 aes aes f ees |
  des4.( bes8 g'[ f ees]) des |
  c4. c8 des des des des |
  c2 s4 \bar"|."
}
altoWords = \lyricmode {
}
altoWordsII = \lyricmode {
%\markup\italic
  \set stanza = #"2. "
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
}
altoWordsV = \lyricmode {
  \set stanza = #"5. "
  \set ignoreMelismata = ##t
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  ees4 |
  des4. des8 des bes aes g |
  aes2*1/16 \teeny aes8*3/4 aes4. \normalsize s4 aes |
  aes4. aes8 aes aes bes c |
  g2 s4 g |

  aes4. aes8 aes8. aes16 aes8. aes16 |
  aes2*1/16 \teeny aes8*3/4 aes4. \normalsize s4 aes8[ aes] |
  \tieDashed bes4.~ bes8~ bes bes aes bes \tieSolid |
  aes2 s4 aes |

  c4. c8 f ees des aes |
  aes4.( des8)~ des8[ aes g] aes8 |
  aes4. aes8 bes bes aes bes |
  aes2 s4 \bar"|."
}

tenorWords = \lyricmode {
}

tenorWordsII = \lyricmode {
}

tenorWordsIII = \lyricmode {
}

bassMusic = \relative c' {
  ees,4 |
  ees4. ees8 ees ees ees ees |
  aes,2*1/16 \teeny aes8*3/4 aes4. \normalsize d4\rest aes4 |
  aes4. aes8 aes aes g aes |
  ees'2 d4\rest ees |

  des4. des8 des8. des16 des8. des16 |
  aes2*1/16 \teeny aes8*3/4 aes4. \normalsize d4\rest aes8[ aes] |
  \tieDashed ees'4.~ ees8~ ees ees ees ees |
  \tieSolid
  aes,2 d4\rest aes |

  aes4. aes8 aes aes bes c |
  des4.( ees8 des4.) des8 |
  ees4. ees8 ees ees ees ees |
  aes,2 d4\rest \bar"|."
}
bassWords = \lyricmode {
}

pianoRH = \relative c' {
}
pianoLH = \relative c' {
}

\score {
<<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics = "altos"  \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosII"  \lyricsto "sopranos" \sopWordsII
    \new Lyrics = "altosIII"  \lyricsto "sopranos" \sopWordsIII
    \new Lyrics = "altosIV"  \lyricsto "sopranos" \sopWordsIV
    \new Lyrics = "altosV"  \lyricsto "sopranos" \sopWordsV
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWordsIII
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWordsII
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  
  \layout {
    \context {
      \Lyrics
      \override LyricText #'font-size = #1.3
      \override VerticalAxisGroup #'staff-affinity = #0
      \override LyricText #'X-offset = #center-on-word
    }
    \context {
      \Score
      \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
      \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4)
    }
    \context {
      % Remove all empty staves
      \Staff \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
      
      \override VerticalAxisGroup #'staff-staff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 0)
         (padding . -1)
         (stretchability . 2))
    }
  }
\header {
  title = \markup{\override #'(font-name . "Garamond Premier Pro Semibold"){ \abs-fontsize #18 \smallCapsOldStyle"The Separation"}}
  poet = \markup\oldStyleNum"Thomas Moore (1779–1852)"
  composer = \markup\oldStyleNum"J. C. Engelbrecht, 1857"
  tagline = ""
}}
global = {
  \key f \major
  \time 4/4
  \dynamicUp
  %\set crescendoSpanner = #'dashed-line
  %\set midiInstrument = "recorder"
  \autoBeamOff
  \override DynamicTextSpanner #'style = #'none
}

sopMusic = \relative c' {
  \partial 8 \teeny c8 | \normalsize
  f4. g8 a4 f |
  d f c2*3/4 \teeny c'8 | \normalsize
  c4. d8 c4 a |
  \slurDashed a( g) g2*3/4 \teeny c,8 | \normalsize
  
  \slurSolid
  f4. g8 a4 f |
  d f c2 |
  c'4. d8 c4 a |
  \slurDashed g4.( f8) f2\fermata \bar"||"

  \slurSolid
  a8 c4. c4 c |
  a4. c8 c2 |
  f4. e8 d4 c |
  d8( c4) a8 g2\fermata |

  a8 a4. g4 f |
  d8 f4. c2 |
  d'4. d8 c4 a |
  a8( g4) f8 f2 \bar"|."
}
sopWords = \lyricmode {
  \set stanza = #"1. "
  \set ignoreMelismata = ##t
  "" Bon -- nie Char -- lie’s now a -- wa;
  "" Safe -- ly owre the friend -- ly main;
  "" Mon -- y~a heart will break in twa,
  Should he ne’er come back a -- gain.
}

sopWordsII = \lyricmode {
  \set stanza = #"2. "
  Ye trust -- ed in your Hie -- land men,
  They trust -- ed you, dear Char -- lie!
  They kent your hid -- ing in the glen,
  Death or ex -- ile brav -- ing.

  Will ye no come back a -- gain?
  Will ye no come back a -- gain?
  Bet -- ter lo’ed ye can -- na be—
  Will ye no come back a -- gain?
}

sopWordsIII = \lyricmode {
  \set stanza = #"3. "
  \set ignoreMelismata = ##t
  "" Eng -- lish bribes were a’ in vain,
  Tho’ puir and puir -- er we maun be;
  "" Sil -- ler can -- na buy the heart
  That beats aye for thine and thee.
}

sopWordsIV = \lyricmode {
  \set stanza = #"4. "
}

sopWordsV = \lyricmode {
  \set stanza = #"5. "
}

altoMusic = \relative c' {
  \partial 8 \teeny c8 | \normalsize
  c4. c8 f4 c |
  bes d a2*3/4 \teeny f'8 | \normalsize
  f4. f8 f4 f |
  \slurDashed f( e) e2*3/4 \teeny c8 | \normalsize

  \slurSolid
  c4. c8 f4 c |
  bes d a2 |
  f'4. f8 f4 f |
  \slurDashed e4.( c8) c2 |

  \slurSolid
  f8 f4. e4 g |
  f4. e8 e2 |
  f4. f8 f4 g |
  f8~ f4 f8 e2 |

  f8 f4. e4 d |
  bes8 d4. a2 |
  f'4. f8 f4 f |
  f8( e4) c8 c2 \bar"|."
}
altoWords = \lyricmode {
}
altoWordsII = \lyricmode {
%\markup\italic
  \set stanza = #"2. "
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
}
altoWordsV = \lyricmode {
  \set stanza = #"5. "
  \set ignoreMelismata = ##t
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  \partial 8 \teeny a8 | \normalsize
  a4. bes8 c4 a |
  f f f2*3/4 \teeny a8 | \normalsize
  a4. bes8 a4 c |
  \tieDashed c~ c c2*3/4 \teeny a8 | \normalsize
  
  \tieSolid
  a4. bes8 c4 a |
  f f f2 |
  a4. bes8 a4 c |
  \tieDashed bes4.~ bes8 a2 |

  \tieSolid
  c8 a4. bes4 bes |
  c4. bes8 bes2 |
  a4. c8 bes4 bes |
  bes8( a4) c8 c2 |

  c8 c4. bes4 a |
  f8 bes4. f2 |
  bes4. bes8 a4 c |
  c8( bes4) a8 a2 \bar"|."
}

tenorWords = \lyricmode {
}

tenorWordsII = \lyricmode {
}

tenorWordsIII = \lyricmode {
}

bassMusic = \relative c' {
  \partial 8 \teeny f,8 | \normalsize
  f4. f8 f4 f |
  bes, bes f2*3/4 \teeny f'8 | \normalsize
  f4. f8 f4 f |
  \tieDashed c~ c c2*3/4 \teeny f8 | \normalsize

  \tieSolid
  f4. f8 f4 f |
  bes, bes f2 |
  f'4. f8 f4 f |
  \tieDashed c4.~ c8 f,2\fermata |

  \tieSolid
  f'8 f4. g4 e |
  f4. c8 c2 |
  f4. f8 f4 e |
  f8~ f4 c8 c2\fermata |

  f8 f4. c4 d |
  bes8 bes4. f2 |
  bes4. bes8 f'4 f |
  c8~ c4 c8 f,2 \bar"|."
}
bassWords = \lyricmode {
}

pianoRH = \relative c' {
}
pianoLH = \relative c' {
}

\score {
<<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
    >>
    \new Lyrics = "altos"  \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosII"  \lyricsto "sopranos" \sopWordsII
    \new Lyrics = "altosIII"  \lyricsto "sopranos" \sopWordsIII
    \new Lyrics = "altosIV"  \lyricsto "sopranos" \sopWordsIV
    \new Lyrics = "altosV"  \lyricsto "sopranos" \sopWordsV
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWordsIII
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWordsII
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  
  \layout {
    \context {
      \Lyrics
      \override LyricText #'font-size = #1.3
      \override VerticalAxisGroup #'staff-affinity = #0
      \override LyricText #'X-offset = #center-on-word
    }
    \context {
      \Score
      \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
      \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4)
    }
    \context {
      % Remove all empty staves
      \Staff \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
      
      \override VerticalAxisGroup #'staff-staff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 0)
         (padding . -1)
         (stretchability . 2))
    }
  }
\header {
  title = \markup{\override #'(font-name . "Garamond Premier Pro Semibold"){ \abs-fontsize #18 \smallCapsOldStyle"Bonnie Charlie"}}
  composer = \markup\oldStyleNum"Lady Nairne"
  tagline = ""
}}
global = {
  \key g \major
  \time 2/4
  \dynamicUp
  %\set crescendoSpanner = #'dashed-line
  \autoBeamOff
  \override DynamicTextSpanner #'style = #'none
}

sopMusic = \relative c' {
  \partial 8 d8^\p |
  g8. g16 g8 b |
  a8. g16 a8 b |
  g8. g16 b8 d |
  e4. \bar"" e8 |
  d8. b16 b8 g |
  
  a8. g16 a8 b |
  \slurDashed g8.( e16) e8( d) |
  g4 b8\rest
  e8 |
  d8.[ b16] b8[ g] |
  a8. g16 a8 b16\rest b |
  
  b8.[ g16] b8.[ d16] |
  e4. \bar"" e8 |
  d8. b16 b8 g |
  a8. g16 a8 b |
  g8.[ e16] e8[ d] |
  g4  b8\rest \bar "|."
}
sopWords = \lyricmode {
  \set stanza = #"1. "
  \set ignoreMelismata = ##t
  Should auld ac -- quain -- tance be for -- got,
  And nev -- er brought to mind?
  Should auld ac -- quain -- tance be for -- got,
  And days of auld lang syne?
}

sopWordsII = \lyricmode {
  \set stanza = #"2. "
  We twa ha’e run a -- boot the braes,
  And pu’d the gow -- ans fine;
  But_we’ve wan -- der’d mon -- y~a wea -- ry foot,
  Sin’ auld __ lang __ syne.
  \unset ignoreMelismata
  \set associatedVoice = "sopranos"
  \dropLyricsXI
  For auld lang \raiseLyrics syne, my dear,
  For auld lang syne;
  We’ll tak’ a cup o’ kind -- ness yet
  For auld lang syne.
}

sopWordsIII = \lyricmode {
  \set stanza = #"3. "
  We twa ha’e sport -- ed i’ the burn,
  Frae morn -- in’ sun till dine,
  But seas be -- tween us braid ba’e roared
  Sin’ auld __ lang __ syne.
}

sopWordsIV = \lyricmode {
  \set stanza = #"4. "
  And here’s a hand, my trust -- y frien’,
  And gie’s a hand o’ thine;
  We’ll tak’ a cup o’ kind -- ness yet,
  For auld __ lang __ syne.
}

sopWordsV = \lyricmode {
  \set stanza = #"5. "
}

altoMusic = \relative c' {
  d8 |
  d8. d16 d8 g |
  fis8. e16 fis8 fis |
  d8. d16 g8 g |
  g4. g8 |
  g8. g16 g8 g |
  
  fis8. e16 fis8 g |
  \slurDashed e8.( c16) c8( c) |
  b4 s8
  g'8 |
  g4 g |
  fis8. e16 fis8 s16 g |
  
  g8.[ e16] g8.[ b16] |
  c4. c8 |
  b8. g16 g8 g |
  fis8. e16 fis8 fis |
  e4 c4 |
  b4 s8 \bar "|."
}
altoWords = \lyricmode {
}
altoWordsII = \lyricmode {
%\markup\italic
  \set stanza = #"2. "
}
altoWordsIII = \lyricmode {
  \set stanza = #"3. "
}
altoWordsIV = \lyricmode {
  \set stanza = #"4. "
}
altoWordsV = \lyricmode {
  \set stanza = #"5. "
  \set ignoreMelismata = ##t
}
altoWordsVI = \lyricmode {
  \set stanza = #"6. "
  \set ignoreMelismata = ##t
}
tenorMusic = \relative c' {
  b8 |
  b8. b16 b8 d |
  d8. d16 d8 d |
  b8. b16 d8 b |
  c4. c8 |
  b8. d16 d8 b |
  
  d8. d16 d8 d |
  \slurDashed c8.( g16) fis8( fis) |
  g4 s8
  c |
  b8.[ d16] d4 |
  d8. d16 d8 s16 d |
  
  d4 d |
  c4. c8 |
  d8. d16 d8 b |
  d8. d16 d8 d |
  b4 fis |
  g s8 \bar "|."
}

tenorWords = \lyricmode {
}

tenorWordsII = \lyricmode {
}

tenorWordsIII = \lyricmode {
}

bassMusic = \relative c' {
  g8 |
  g8. g16 g8 g |
  d8. d16 d8 d |
  g8. g16 g8 g |
  c,4. c8 |
  g'8. g16 g8 g |
  
  d8. d16 d8 g |
  \slurDashed c,8.( c16) d8( d) |
  g,4 d'8\rest
  g |
  g4 g4 |
  d8. d16 d8 d16\rest g |
  
  g4 g |
  c,4. c8 |
  g'8. g16 g8 g |
  d8. d16 d8 b |
  e4 d |
  g, d'8\rest \bar "|."
}
bassWords = \lyricmode {
}

pianoRH = \relative c' {

}
pianoLH = \relative c' {
}

\score {
<<
   \new ChoirStaff <<
    \new Staff = women <<
      \new Voice = "sopranos" { \voiceOne << \global \set Staff.midiInstrument = #"flute" \sopMusic >> }
      \new Voice = "altos" { \voiceTwo << \global \set Staff.midiInstrument = #"flute" \altoMusic >> }
    >>
    \new Lyrics = "altos"  \lyricsto "sopranos" \sopWords
    \new Lyrics = "altosII"  \lyricsto "sopranos" \sopWordsII
    \new Lyrics = "altosIII"  \lyricsto "sopranos" \sopWordsIII
    \new Lyrics = "altosIV"  \lyricsto "sopranos" \sopWordsIV
    \new Lyrics = "altosV"  \lyricsto "sopranos" \sopWordsV
   \new Staff = men <<
      \clef bass
      \new Voice = "tenors" { \voiceOne << \global \set Staff.midiInstrument = #"flute" \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \set Staff.midiInstrument = #"flute"\bassMusic >> }
    >>
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWordsIII
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWordsII
    \new Lyrics \with { alignAboveContext = #"tenors" } \lyricsto "tenors" \tenorWords
  >>
%    \new PianoStaff << \new Staff { \new Voice { \pianoRH } } \new Staff { \clef "bass" \pianoLH } >>
  >>
  
  \layout {
    \context {
      \Lyrics
      \override LyricText #'font-size = #1.3
      \override VerticalAxisGroup #'staff-affinity = #0
      \override LyricText #'X-offset = #center-on-word
    }
    \context {
      \Score
      \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
      \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4)
    }
    \context {
      % Remove all empty staves
      \Staff \RemoveEmptyStaves \override VerticalAxisGroup #'remove-first = ##t
      
      \override VerticalAxisGroup #'staff-staff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 0)
         (padding . 0.5)
         (stretchability . 2))
    }
  }
\header {
  title = \markup{\override #'(font-name . "Garamond Premier Pro Semibold"){ \abs-fontsize #18 \smallCapsOldStyle"Auld Lang Syne"}}
  poet = \markup\oldStyleNum"First verse, traditional"
  meter = \markup\oldStyleNum"Other verses, Robert Burns (1759–1796)"
  composer = \markup\oldStyleNum"Traditional"
  tagline = ""
}}
