% Copied from Easy Classical Clarinet Solos by Javier Marcó
% pg 21

\include "globals.ly"

\header {
    title = "Lullaby"
    composer = "by J. Brahms"
    arranger = "arr. Javier Marcó"
}

melody = \relative c' {
    \tempo "Adagio"
    \time 3/4
    \key c \major
    \set Timing.beamHalfMeasure = ##f

    s2 e8 \mp e |

    \repeat volta 2 {
        g2 e8 e | g2 e8 g | c4( b4.) a8 | a4( g) d8 e |
        f2 d8 e8 | f2 d8 f | b8( a) g4 b | c2 c,8 c |
        c'4. c8 a( f) | g2 c,8 c | f4 g a | g2 c,8 c |
        c'4. c8 a( f) | g2 e8 c | f4 e d |
    }

    \alternative {{ c2 e8 e } { c2. }}
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
