\include "globals.ly"

\header {
    title = "Inner Light"
}

melody = \relative c' {
    \tempo "With melancholy"
    \key g \major
    \time 6/8
    
    d8. e16 d8 g4 g8    | a4 d8 b4.         | a4 e'8 d4 c8          | b8. a16 g8 e4.            |
    d8. e16 d8 g4 g8    | a4 e'8 d4 e16 fs  | g8. fs16 e8 fs4 d8    | b4. a4 e8                 |
    d8. e16 d8 g4 g8    | a4 d8 b4.         | a4 e'8 d4 c8          | b8. a16 g8 e4 fs16 e16    |
    d8. e16 d8 g4 g8    | a4 d8 b4.         | a4 e'8 d4 c8          | b8. c16 a8 g4.            |
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
