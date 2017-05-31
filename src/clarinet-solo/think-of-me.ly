% Transcribed from "The Phantom of the Opera: Easy Piano" pages 10-16

\include "globals.ly"

\header {
  title = "Think of Me"
  composer = "Andrew Lloyd Webber"
}

melody = \relative c' {
  \numericTimeSignature
  \time 4/4
  \key c \major
  \tempo Moderately
  r1 | r1 |
  e8 f e4 r2 | d8 d d g~ g4 d | c4. c8 c4 c' |
  g2 r4 r8 f | e f e4 r2 | d8 d d g~ g4 d |

  c4. c8 c4 c' | g1 | e8 f e4~ e8 f e f |
  e8 f e4 r8 gs8 b d | d4 c a e | d2 c4 d |
  e8f e2 a4 | g2 e | \time 12/8 d4. e f b, |
  \time 4/4 c2 r2 | \key f \major r1 | r1 |

  r1 | r1 | r1 | r1 |
  r1 | r2. r8 bf' | a bf a4~ a8 bf a bf |
  a8 bf a4 r8 cs e g | g4 f d a | g2 f4 g |
  a8 bf a2 d4 | c2 a | \time 12/8 g4. a bf e, |

  \time 4/4 f4 r2. | f2 f'2 | e4 e d c |
  ef2 bf | g2. g4 | a8 bf a2 d4 |
  c2 a | g d | e1 | a8 bf a2. |
  g8 g g c~ c4 g | f4. f8 f4 f' | c2. r8 bf8 |

  a8 bf a2. | g8 g g c~ c4 g | f4. f8 f4 f' |
  c2. r4 | a8 bf a4~ a8 bf a bf | a8 bf a4 r8 cs8 e g |
  g4 f d a | g2 f4 g | a8 bf a2 d4 |
  c2 a | g4. r8 a4. r8 | bf4. r8 e4. r8 |

  f1 | r1 | r1 |
  r1 | \mark "Raoul:" a,,8 bf a2. | g8 g g c~ c4 g |
  r1 | r1 | a8 bf a4~ a8 bf a bf |
  a8 bf a4 r8 cs8 e g | g4 f d a | g2 f4 g |

  a8 bf a2 d4 | c2 a | g a | bf e, |
  \mark "Christine:" a'8 bf a4~ a8 bf a bf | a bf a4 r8 cs8 e g |
  g4 f d a | g2 f4 g | a8 bf a2 d4 | c2 a |
  g a bf c f1 \fermata |
}

words = \lyricmode {
  Think of me, think of me fond -- ly when we've said good -- bye.
  Re -- mem -- ber me ev -- 'ry so of -- then, pro -- mise me you'll try.
  On that day that not so dis -- tant day, when you are far a -- way and free,
  if you ev -- er find a mo -- ment, spare a thought for me.
  And though it's clear though it was al -- ways clear that this was nev -- er meant to be,
  if you hap -- pen to re -- mem -- ber, stop and think of me.
  Think of Au -- gust when the trees were green;
  don't think a -- bout the way things might have been.
  Think of me, think of me wak -- ing si -- lent and re -- signed.
  Im -- ag -- ine me, try -- ing to hard to put you from my mind.
  Think of me please say you'll think of me what -- ev -- er else you choose to do.
  There will nev -- er be a day when I won't think of you.
  Can it be, can it be Christ -- ine?
  Long a -- go it seems so long a -- go how young and in -- no -- cent we were.
  She may not re -- mem -- ber me, but I re -- mem -- ber...
  Flow -- ers fade the fruits of sum -- mer fade, they have their sea -- son so do we...
  but please pro -- mise me that some -- times you will think of me!
}

\score {
  <<
    \new Staff \with {
      instrumentName = "Clarinet"
    } {
      \naturalizeMusic
      \transpose bf c'
      \melody
      \addlyrics { \words }
    }
  >>
  \layout {
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 1/8)
    }
  }
}
