\include "empty-chairs-at-empty-tables.ly"

\book {
    \score {
        \new Staff \with {
            instrumentName = "Tenor Sax"
        } {
            \transpose a b
            \melody

            \addlyrics {
                \set fontSize = #-2
                \words
            }
        }
    }
}
