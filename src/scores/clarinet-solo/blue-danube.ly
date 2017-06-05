% Copied from Easy Classical Clarinet Solos by Javier Marcó
% pg 15

\include "globals.ly"

\header {
    title = "The Blue Danube"
    composer = "by J. Strauss"
    arranger = "arr. Javier Marcó"
}

melody = \relative c' {
    \tempo "Tempo di valse"
    \time 3/4
    \key c \major

    s2 c4               | c4 e g            | g2 g4             | g2 e4             |
    e2 c4               | c4 e g            | g2 g4             | g2 f4             |
    f2                  | b,4               | b4 d a'           | a2 a4             |
    a2 f4               | f2 b4             | b,4 d a'          | a2 a4             |
    a2 e4               | d2 c4             | c4 e g            | c2 c4             |
    c2 g4               | g2 c,4            | c4 e g            | c2 c4             |
    c2 a4               | a2 d,4            | d f a             | a2.( a4) fs g     |
    e2.(                | e4) c e           | e2 d4             | a'2 g4            |
    c,4. c8 c4          | c2.               |
}

decoration = \relative c' {
    s2 s4 \mf           | s2.               | s2.               | s2.               |
    s2.                 | s2.               | s2.               | s2.               |
    s2.                 | s2.               | s2.               | s2.               |
    s2.                 | s2.               | s2.               | s2.               |
    s2.                 | s2.               | s2.               | s2.               |
    s2.                 | s2.               | s2.               | s2.               |
    s2 s4 \<            | s2.               | s2. \! \f         | s2.               |
    s2.                 | s2.               | s2.               | s2.               |
    s2.                 | s2. \bar "|."     |
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
