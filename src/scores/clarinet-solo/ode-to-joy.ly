% Copied from Easy Classical Clarinet Solos by Javier Marcó
% pg 25

\include "globals.ly"

\header {
    title = "Ode to Joy"
    composer = "by L. van Beethoven"
    arranger = "arr. Javier Marcó"
}

melody = \relative c' {
    \tempo "Moderato"
    \time 4/4
    \key c \major

    e4 \f e f g         | g4 f e d          | c4 c d e          | d4. d8 d2         |
    e4 e f g            | g4 f e d          | c4 c d e          | d4. c8 c2         |
    d4 \p d e c         | d4 e8 f e4 c      | d4 e8 f e4 d      | c4 d g,2          |
    e'4 \f e f g        | g4 f e d          | c4 c d e          | d4. c8 c2         |

    \bar "|."
}

\book {
    \score {
        \new Staff \with {
            instrumentName = "Clarinet"
        } {
            \melody
        }
    }
}
