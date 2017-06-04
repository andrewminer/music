\include "globals.ly"

\header {
    title = "Nature Boy"
    composer = "music by: Eden Ahbez"
    poet = "sung by: Nat King Cole"
}

melody = \relative c' {
    \tempo Slowly
    \key g \major
    \time 3/4

    s2 s8 b            | b'8. g16 e2(       | e8) b fs' g a c | b8. g16 e2(     |
    e8) b fs' g a c    | b8 e ds2           | b8 d cs2        | b8 c b4( b8) e, |
    fs2.               | b8 a fs2(          | fs2) r8 b,      | a'8 g e2(       |
    e2) r8 as,8        | g'8 fs cs2(        | cs2) d4         | ds2.(           |
    d2) r8 b           | b'8. g16 e2(       | e8) b fs' g a c | b8. g16 e2(     |
    e8) b fs' g a c    | b8 e ds2           | b8 d cs2        | b8 c b4( b8) e, |
    fs2.               | b8 a fs2(          | fs2) r8 b,8     | a'8 g e2(       |
    e2) r8 as,8        | g'8 fs cs4( cs8) c | e8 ds4. c8. b16 | e2.(            |
    e2) r4             |
}

decoration = \relative c' {
    \time 3/4

    s2 s4 \bar "||"    | s2 s4              | s2 s4           | s2 s4           |
    s2 s4              | s2 s4              | s2 s4           | s2 s4           |
    s2 s4              | s2 s4              | s2 s4           | s2 s4           |
    s2 s4              | s2 s4              | s2 s4           | s2 s4           |
    s2 s4 \bar "||"    | s2 s4              | s2 s4           | s2 s4           |
    s2 s4              | s2 s4              | s2 s4           | s2 s4           |
    s2 s4              | s2 s4              | s2 s4           | s2 s4           |
    s2 s4              | s2 s4              | s2 s4           | s2 s4           |
    s2 s4 \bar "|."    |
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
