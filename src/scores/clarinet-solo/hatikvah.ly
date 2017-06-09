% Copied from First Book of Clarinet Solos by John Davies and Paul Reade
% pg 6

\include "globals.ly"

\header {
    title = "Hatikvah"
    composer = "Traditional"
    arranger = "arr. John Davies & Paul Reade"
}

melody = \relative c' {
    \tempo "Moderato"
    \numericTimeSignature \time 4/4
    \key c \major

    a8( b) c-. d-. e4 e | f8( e) f( a) e2 | d4-- d8-. d-. c4 c | b8( a) b( c) a2 |
    a8( b) c-. d-. e4 e | f8( e) f( a) e2 | d4-- d8-. d-. c4 c | b8( a) b( c) a2 |
    a4-> a'-> a-> a-> | g8( a) g( f) e2 | a,4-> a'-> a-> a-> | g8( a) g( f) e2 |
    d4-- d8-. d-. c4 c | d8( e f g) e( d c4) | d4-- d8-. d-. c4 c | \grace { c8( } b8)( a) b-. c-. a2 |
    d4-- d8-. d-. c4 c | b8( a) b( c) a2-> |

    \bar "|."
}

decoration = \relative c' {
    s8 \mf s8_\markup { \italic \fontsize #-2 "cantabile" } s4 s2 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s4 \f s2. | s2 s2 \> |
    s4 \mf s8_\markup { \italic \fontsize #-2 "dolce" } s8 s2 | s2 s8 \> s8 s4 | s4 \p s2. | s1 |
    \mark "rall." s4 \mf s8_\markup { \italic \fontsize #-2 "cresc." } s8 s2 | s8 \< s8 s8 s8 \! s2 |
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
