\include "globals.ly"

\header {
    title = "Somewhere Over the Rainbow"
    composer = "E.Y. Harburg & Harold Arlen"
}

melody = \relative c' {
    \key bf \major
    \tempo 4 = 88
    \time 4/4
    bf2 bf'             | a4 f8 g a4 bf         | r4 bf,4 g'2                           | f2. r4                    |
    r4 g,4 ef'2         | d4 bf8 c d4 ef        | r8 c( \tuplet 3/2 { c) a bf }  c4 d   | bf2 r2 \bar "||"          |
    bf2 bf'             | a4 f8 g a4 bf         | r2 bf,4 g'(                           | g) f2.                    |
    r4 g,4 ef'2           | d4 bf8 c d4. ef8      | c4 a8 bf c4 d                         | bf2 r4 f'\fermata         |
    d8 f d f d f d f    | ef8 f ef f ef f ef f  | g2 g(                                 |
    \time 5/4
    g2.) r4 r8 f        |
    \time 4/4
    d8 f d f d f d f    | e g e g e g e g       | a2 a                                  | c2 g\fermata \bar "||"    |
    bf,2 bf'            | a4 f8 g a4 bf         | r2 bf,4 g'4(                          | g4) f2.                   |
    r4 g, ef'2          | d4 bf8 c d4 ef        | c4 a8 bf c4 d                         | bf2 r                     |
    \time 5/4
    r1 r8 f'
    \tempo "Rubato"
    d8 f d f d f d4 r8 f8
    \time 4/4
    ef8 f ef f r2       | ef2 f                 | g2 a                                  | bf1(                      |
    bf2) r2 \bar "|."
}

words = \lyricmode {
    Some -- where, o -- ver the rain -- bow, way up high,
    there's a land that I heard of once in a lul -- a -- by.
    Some -- where, o -- ver the rain -- bow, skies are blue.
    And the dreams that you dare to dream, real -- ly do come true.
    Some -- day, I'll wish up -- on a star,
    and wake up where the clouds are far be -- hind me.
    Where trou -- bles melt like le -- mon drops,
    a -- way a -- bove the chim -- ney tops,
    that's where you'll find me.
    Some -- where, o -- ver the rain -- bow, blue -- birds fly.
    Birds fly o -- ver the rain -- bow; why then, oh, why can't I?
    If hap -- py lit -- tle blue -- birds fly,
    be -- yond the rain -- bow, why, oh, why can't I?
}

\book {
    \score {
        \new Staff \with {
            instrumentName = "Clarinet"
        } {
            \numericTimeSignature
            \naturalizeMusic
            \transpose bf c'
            \melody

            \addlyrics {
                \set fontSize = #-2
                \words
            }
        }
    }
    
    \paper {
        page-count = #1
    }
}
