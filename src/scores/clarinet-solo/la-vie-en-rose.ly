\include "globals.ly"

\header {
    title = "La Vie En Rose"
    composer = "Edith Piaf"
}

melody = \relative c'' {
    \tempo Sweetly
    \numericTimeSignature \time 4/4
    \key f \major

    \repeat volta 2 {
        f4( f8) e d c a f' | e4( e8) d c a f e' | d4( d8) c a e f e' | d2 c |
        g'4( g8) f e d bf f' | e4( e8) d c bf g f' | d4( d8) c bf fs g e' | d2 c |
        f4( f8) e d c a f' | e4( e8) d c a f e' |
    }
    \alternative {{
        d4( d8) c a e f f' | f1 | g8 g4 f8 g g4 f8 | g g4 f8 c2 |
        g'8 g4 f8 g g4 f8 | g g4 f8 a4 g |
    } {
        d4( d8) c d4 e | f1 |
    }}
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
