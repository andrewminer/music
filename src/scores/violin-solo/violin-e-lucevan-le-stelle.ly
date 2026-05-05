\version "2.24.4"
\include "e-lucevan-le-stelle.ly"

\book {
    \score {
        \new Staff \with {
            instrumentName = "Violin"
        } {
            \transpose c bf, \melody
        }
    }
}
