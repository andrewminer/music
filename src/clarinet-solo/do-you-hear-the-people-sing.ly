
\include "globals.ly"

\header {
    title = "Do You Hear the People Sing"
    composer = "Music by Claude-Michel Schöenberg"
    poet = "Lyrics by Herbert Kretzmer"
}

melodyIntroNotes = \relative c'' {
    \key d \minor
    r4. a4 g8 | f4 g8 a4 b8 | c4. a8 g f | e4 d8 e4 f8 | c4. e8 c b |
    a4 c8 f4 a8 | g4 fs8 g4 d8 | f4 e8 e4 f8 | g4. a4 g8 | f4 g8 a4 b8 | c4. a8 g f | e4 d8 e4 f8 |
    c4. d8 c b | a4 c8 f4 a8 | g fs g b4 e8 | f2. | r4. e4 e8 |
}

melodyRepeatNotes = \relative c'' {
    \key a \minor
    a4 gs8 a4 b8 | c4 b8 a4 c8 | b4 a8 g4 a8 | b4. r8 b8 c8 | d4 c8 b4 c8 |
    d4 c8 b4 d8 | c4 b8 a4 b8 | c4.( c4) a8 | c8 b a c b a | c b a c b c |
    d2.( | d4.) e4 d8 | c4 d8 e4 f8 | g4. e8 d c | b4 a8 b4 c8 |
    g4. a8 g f | e4 g8 c4 e8 | d4 cs8 d4 a8 | c4 b8 b4 c8 | d4. e4 d8 |
    c4 d8 e4 f8 | g4. e8 d c | b4 a8 b4 c8 | g4. a8 g f |
}

melodyFirstEndingNotes = \relative c' {
    e4 g8 c4 e8 | d8 cs d f4 b,8 | c4. r4. | r4. e,4 e8
}

melodySecondEndingNotes = \relative c' {
    e4 g8 c4 e8 | d8 cs d f4 b,8 | c4. r4. ||
}

melodyIntroLyrics = \lyricmode {
    Do you hear the peo -- ple sing, sing -- ing the song of an -- gry men? It is the
    mu -- sic of a peo -- ple who will not be slaves a -- gain! When the beat -- ing of your heart ech -- os the beat -- ing of the
    drums, there is a life a -- bout to start when to -- mor -- row comes. Will you
}

melodyRepeatLyrics = \lyricmode {
    join in our cru -- sade? Who will be strong and stand with me? _ Be -- yond the bar -- ri-
    cade is there a world you long to see? Then join in the fight that will give you the right to be
    free! Do you hear the peo -- ple sing, sing -- ing the song of an -- gry
    men? It is the mu -- sic of a peo -- ple who will not be slaves a -- gain! When the
    beat -- ing of your heart e -- chos the beat -- ing of the drums, there is a
}

melodyFirstEndingLyrics = \lyricmode {
    life a -- bout to start when to -- mor -- row comes! Will you
}

melodySecondEndingLyrics = \lyricmode {
    life a -- bout to start when to -- mor -- row comes!
}

\layout {
    indent = 0
}

\book {
    \score {
        \new Staff <<
            \time 6/8
            \tempo "Slow March"
            \new Voice {
                \new Voice = "intro" \melodyIntroNotes
                \new Voice = "repeat" \repeat volta 2 \melodyRepeatNotes
                \alternative {
                    \new Voice = "firstEnding" \melodyFirstEndingNotes
                    \new Voice = "secondEnding" \melodySecondEndingNotes
                }
            }
            \new Lyrics \lyricsto "intro" \melodyIntroLyrics
            \new Lyrics \lyricsto "repeat" \melodyRepeatLyrics
            \new Lyrics \lyricsto "firstEnding" \melodyFirstEndingLyrics
            \new Lyrics \lyricsto "secondEnding" \melodySecondEndingLyrics
        >>
    }

    \paper {
        page-count = #2
    }
}
