\include "globals.ly"

\header {
    title = "Do You Hear the People Sing"
    composer = "Music by Claude-Michel Schöenberg"
    poet = "Lyrics by Herbert Kretzmer"
}

melody = \relative c'' {
    \tempo "Slow March"
    \time 6/8
    \key d \minor

    r4. a4 g8 | f4 g8 a4 bf8 | c4. a8 g f | e4 d8 e4 f8 | c4. d8 c bf |
    a4 c8 f4 a8 | g4 fs8 g4 d8 | f4 e8 e4 f8 | g4. a4 g8 | f4 g8 a4 bf8 | c4. a8 g f | e4 d8 e4 f8 |
    c4. d8 c bf | a4 c8 f4 a8 | g fs g bf4 e,8 | f2. | r4. e4 e8 |
    \repeat volta 2 {
        \key a \minor
        a4 gs8 a4 b8 | c4 b8 a4 c8 | b4 a8 g4 a8 | b4. r8 b8 c8 | d4 c8 b4 c8 |
        d4 c8 b4 d8 | c4 b8 a4 b8 | c4.( c4) a8 | c8 b a c b a | c b a c b c |
        d2.( | d4.) e4 d8 | c4 d8 e4 f8 | g4. e8 d c | b4 a8 b4 c8 |
        g4. a8 g f | e4 g8 c4 e8 | d4 cs8 d4 a8 | c4 b8 b4 c8 | d4. e4 d8 |
        c4 d8 e4 f8 | g4. e8 d c | b4 a8 b4 c8 | g4. a8 g f |
    }
    \alternative {
        { e4 g8 c4 e8 | d8 cs d f4 b,8 | c4. r4. | r4. e,4 e8 }
        { e4 g8 c4 e8 | d8 cs d f4 b,8 | c4. r4. | }
    }
    \bar "|."
}

words = \lyricmode {
    Do you hear the peo -- ple sing, sing -- ing the song of an -- gry men? It is the
    mu -- sic of a peo -- ple who will not be slaves a -- gain! When the beat -- ing of
    your heart ech -- os the beat -- ing of the drums, there is a life a -- bout to start
    when to -- mor -- row comes. Will you
    \repeat volta 2 {
        join in our cru -- sade? Who will be strong and stand with me? _ Be -- yond the bar -- ri-
        cade is there a world you long to see? Then join in the fight that will give you the right to be
        free! Do you hear the peo -- ple sing, sing -- ing the song of an -- gry
        men? It is the mu -- sic of a peo -- ple who will not be slaves a -- gain! When the
        beat -- ing of your heart e -- chos the beat -- ing of the drums, there is a
    }
    \alternative {
        { life a -- bout to start when to -- mor -- row comes! Will you }
        { life a -- bout to start when to -- mor -- row comes! }
    }
}

\book {
    \score {
        \new Staff \with {
            instrumentName = Clarinet
        } {
            \transpose bf c' \melody

            \addlyrics {
                \set fontSize = #-2
                \words
            }
        }
    }
}
