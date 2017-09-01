\include "empty-chairs-at-empty-tables.ly"

\book {
    \score {
        \new Staff \with {
            instrumentName = Clarinet
        } {
            \melody

            \addlyrics {
                \set fontSize = #-2
                \words
            }
        }
    }
}
