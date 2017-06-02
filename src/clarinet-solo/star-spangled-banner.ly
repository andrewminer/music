\include "globals.ly"

\header {
    title = "The Star Spangled Banner"
    composer = "John Stafford Smith"
}

melody = \relative c' {
    \key bf \major
    \time 3/4
  
    r2 f8. ( d16 )              | bf4 d f               | bf2 d8. c16       | bf4 d, e                  |
    f2 f8 f                     | d'4. c8 bf4           | a2 g8 a           | bf4 bf f                  |
    d bf f'8. ( d16 )           | bf4 d f               | bf2 d8. c16       | bf4 d, e                  |
    f2 f8 f                     | d'4. c8 bf4           | a2 g8 a           | bf4 bf f                  |
    d bf d'8 d                  | d4 ef f               | f2 ef8 d          | c4 d ef                   |
    ef2 ef4                     | d4. c8 bf4            | a2 g8 a           | bf4 d, e                  |
    f2 f4                       | bf4 bf bf8 ( a )      | g4 g g            | c4 ef8 ( d ) c ( bf )     |
    bf4 ( a ) \fermata f8 f     | bf4. ( c8 ) d ef      | f2 bf,8 c         | d4. ef8 c4                |
    bf2.                        |
}

words = \lyricmode {
    O say, can you see, by the dawn's ear -- ly
    light, what so proud -- ly we hail'd at the
    twi -- light's last gleam -- ing? Whose broad
    stripes and bright stars, thro' the per -- il -- ous
    flight, o're the ram -- parts we watch'd, were so
    gal -- lant -- ly stream -- ing? And the rock -- et's
    red glare, the bombs burst -- ing in air gave proof
    thro' the night that our flag was still there.
    O say, does that star span -- gled ban -- ner yet wave
    o'er the land of the free and the home of the brave?
}

\book {
    \score {
        \new Staff \with {
            instrumentName = "Clarinet"
        } {
            \tempo "With Spirit"
            \naturalizeMusic
            
            \transpose bf c'
            \melody
            
            \addlyrics {
                \set fontSize = #-2
                \words
            }
        }
    }
}
