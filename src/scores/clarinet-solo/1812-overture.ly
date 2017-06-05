% Copied from Easy Classical Clarinet Solos by Javier Marcó
% pg 13

\include "globals.ly"

\header {
    title = "1812 Overture"
    composer = "by Pyotr Tchaikovsky"
    arranger = "arr. Javier Marcó"
}

melody = \relative c' {
    \tempo "Alla Marcia"
    \numericTimeSignature \time 4/4
    \key c \major

    r8 g8 c d e d c d | e4 c c2    | r8 g8 c d e d c d      | e4 c c2        |
    r8 a d e d a b a  | d e d a d2 | r8 g, c d c g e g      | c d c g c2     |
    r8 g8 c d e d c d | e4 c c2    | r8 g8 c d e d c d      | e4 c c2        |
    r8 a d e d a b a  | d e d a d2 | r8 g, c d c g e g      | c8 d c g c2    |
}

decoration = \relative c' {
    s8 \f s8 s4 s2    | s1         | s1                     | s1             |
    s1                | s1         | s1                     | s1             |
    s1                | s1         | s1                     | s1             |
    s1                | s1         | s4 \mark "rall." s4 s2 | s2 s2 \fermata |
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
