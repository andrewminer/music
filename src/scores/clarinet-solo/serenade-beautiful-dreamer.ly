% Copied from First Book of Clarinet Solos by John Davies and Paul Reade
% pg 12

\include "globals.ly"

\header {
    title = "Serenade: Beautiful Dreamer"
    composer = "Stephen Foster"
    arranger = "arr. John Davies & Paul Reade"
}

melody = \relative c'' {
    \tempo "Moderato"
    \numericTimeSignature \time 9/8
    \key f \major

    \repeat volta 2 {
        f8( e f) c4.( a) | g8( fs g) d'2. | c8( e d) d( c bf) bf( a g) |
    }
    \alternative {{ a2.( a4.) } { f2.( f4.) }}

    c'8( bf g) e4.( d') | d8( c a ) f2. |
    f'8( e f) d4. g4( f8) | e( f d c2. | f8( e f) c4.( a) | g8( fs g) d'2. |
    c8( e d) d( c bf) bf( a g) | a2.( a4.) | d8( e f) f( c a) \grace { a8( } bf8( a g) |
    f2.( f4.) |

    \bar "|."
}

decoration = \relative c' {

}

\book {
    \score {
        \new Staff \with {
            instrumentName = "Clarinet"
        } {
            << \melody \decoration >>
        }
    }
}
