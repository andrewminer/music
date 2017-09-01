\include "feed-the-birds.ly"

\book {
    \score {
        \new Staff \with {
            instrumentName = "Tenor Sax"
        } {
            \transpose g c'
            \melody
            \addlyrics {
                \set fontSize = #-2
                \words
            }
        }
    }
}
