% Copied from First Book of Clarinet Solos by John Davies and Paul Reade
% pg 13-14

\include "globals.ly"

\header {
    title = "Landler"
    composer = "by Carl Reinecke"
}

melody = \relative c'' {
    \tempo "Allegretto"
    \numericTimeSignature \time 3/4
    \key c \major

    \repeat volta 2 {
        g4-. c-. d-. | e4.( d8 c4) | g4-. c-. e-. | d2. |
        a4-. d-. f-. | a4.( g8 f4) |
    }
    \alternative {{ c2 r4 }  { c2. }}

    \repeat volta 2 {
        r2. | a4 e-.( e) | a4 e-.( e-.) | d2 r4 | b'4-. d-. f-. | f4.( e8 d4) |
        d4( c b) |
    }
    \alternative {{ a2. } { a2( af4) \fermata }}

    g4-. c-. d-. | e4.( d8 c4) | g4-. c-. e-. |
    d2. | a4-. d-. f-. | a4.( g8 f4) | f4( a, b) | c2 r4 | g4-. c-. d-. |
    e4.( d8 c4) | r2. | r2. | a4-. d-. f-. | a4.( g8 f4) | f4( a, b) | c2. \fermata |

    \bar "|."
}

decoration = \relative c' {
    \repeat volta 2 {
        s4_\markup { \musicglyph #"f" \fontsize #-2 \italic "(2nd." \musicglyph #"p" ")" } s2 | s2. | s2. | s2. |
        s2. | s2. |
    }
    \alternative {{ s2. } { s2. }}

    \repeat volta 2 {
        s2. | s4 \p s2 | s2. | s2. | s4 \mf \< s2 | s4. \! s8 s4 |
        s4 \> s2 |
    }
    \alternative {{ s2. \! } { s2. }}

    s4 \mf s2 | s2. | s2. |
    s2. | s2. | s2. | s2. | s2. | s4 \mp s2 |
    s2. | s2. | s2. | s4 \f \s2 | s2. | s4^\markup { \bold \fontsize #-1 "poco rit." } s2 | s2. |
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
