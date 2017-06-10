% Copied from First Book of Clarinet Solos by John Davies and Paul Reade
% pg 2

\include "globals.ly"

\header {
    title = "Song of the Volga Boatmen"
    composer = "Traditional"
    arranger = "arr. Paul Reade"
}

melody = \relative c' {
    \tempo "Lento e sostenuto"
    \numericTimeSignature \time 2/2
    \key a \minor

    c4 a d2 | a2 r | c4 a d2 | a2 r | c2 f | e4 f8-- e d2 |
    c4 a d2 | a2 r | c2. c4 | c4-- bf a g | a2 c | a2 r | c2. c4 |
    c4-- bf a g | a2 c | a2 r | d2 d4 d | a2 a | f'2 e4 d | c2 a |
    d2 f | d4 f8-- e d2 | c4 a d2 | a2 r | c4 a d2 | a2 r |

    \bar "|."
}

decoration = \relative c' {
    s4 \mf \< s4 s2 \! \> | s2 s2 \! | s4 \< s4 s2 \! \> | s2 \! s2 | s1 | s1 |
    s4 \< s2 s4 \! \> | s2 s2 \! | s2. \p s4 | s4 s4 \< s4 s4 \! | s2 \> s2 | s2 \! s2 | s1 |
    s4 s4 \< s4 s4 \! | s2 \> s2 \! | s1 | s2 \f s2 | s1 | s1 | s1 |
    s2 \cresc s2 | s1 \! | s4 s4 s2 \dim | s2 s2 \! | s4 \< s4 \2 \! \> | s2 s2 \! |
}

\book {
    \score {
        \layout {
            \context {
                \Score
                proportionalNotationDuration = #(ly:make-moment 1/4)
            }
        }
        \new Staff \with {
            instrumentName = "Clarinet"
        } {
            << \melody \decoration >>
        }
    }
}
