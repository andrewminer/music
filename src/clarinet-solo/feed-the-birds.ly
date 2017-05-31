\include "globals.ly"

\header {
    title = "Feed the Birds"
    subtitle = \markup { \vspace #1 }
    composer = "by Richard & Robert Sherman"
}

\layout {
    indent = 0

    \context {
        \Score
        proportionalNotationDuration = #(ly:make-moment 1/8)
    }
}

\book {
    \score {
        \new Staff {
            \key g \major
            \numericTimeSignature \time 3/4

            \naturalizeMusic \relative c'' {
                \tempo 4 = 60
                b4 c b       | a2 g8 a         | b4 c b        | b2.         |
                b4 c b       | a2 g8 fs        | e4 fs g       | fs2 fs4     |
                e fs g       | fs e ds e2.(    | e4) r g8 a    | b4 c b      |
                a2 g8 fs     | d4 fs g         | fs2.          | e2 fs8 e    |
                ds2 b8 fs'   | e2.(            | e4) r r       | d4 c'4. c8  |
                c8 d c2      | c4 b4. as8      | b2.           | d,4 c' c    |
                c2 d8 c      | b2.(            | b4) r b       | b4 c b      |
                a4 g4. fs8   | e4 fs g         | fs2 g8 fs     | e2 e4       |
                ds8 b4. fs'4 | e2.(            | d2) r4        | g,2( g8) b  |
                d2.          | e8 g4.( g8) e   | d2.           | e8 g4.( g4) |
                b8 g4.( g4)  | g8 fs4.( fs8) g | a2 r4         | \pageBreak
                g,2( g8) b   | d2.             | e4 g4. e8     | d2.         |
                e4 g4. e8    | d2 g4           | fs2 g8 a      | g4 r g8 fs  |
                e2 ds8 e     | b'4 a4. fs8     | e2 ds8 e      | fs4 b,4. b8 |
                e2 ds8 e     | b'2 fs4         | g2.(          | g4) r g     |
                g4 fs g      | d'4 c4. a8      | g2 fs8 g      | a4 d,4. a'8 |
                b2 c8 b      | a2 g8 fs        | e2.(          | d2) r4      |
                g,2( g8) b   | d2 d4           | e8 g4.( g8) e | d2.         |
                e8 g4.( g4)  | b8 g4.( g8) g   | g4 fs g       | a2.         |
                g,2( g8) b   | d2.             | e8 g4.( g8) a | b2.         |
                b8 g4.( g4)  | b8 g4.( g4)     | b8 g4.( g8) a | g2.\fermata \bar "|."
            }

            \addlyrics {
                \set fontSize = #-2
                _ _ _ _ _ _ _ _ _ _
                Ear -- ly each day to the steps of Saint Paul’s the lit -- tle old bird wo -- man comes.
                In her own spe -- cial way to the peo -- ple she calls, “Come, buy my bags full of crumbs.”
                Come feed the lit -- tle birds, show them you care, and you’ll be glad if you do.
                Their young ones are hun -- gry their nests are so bare; all it takes is tup -- pence from you.
                Feed the birds, tup -- pence a bag, tup -- pence, tup -- pence, tup -- pence a bag.
                “Feed the birds,” that’s what she cries, while o -- ver -- head, her birds fill the skies.
                All a -- round the ca -- the -- dral the saints and a -- pos -- tles look down as she sells her wares.
                Al -- though you can't see it, you know they are smi -- ling each time some -- one shows that he cares.
                Though her words are sim -- ple and few, lis -- ten, lis -- ten, she's call -- ing to you:
                “Feed the birds, tup -- pence a bag, tup -- pence, tup -- pence, tup -- pence a bag.”
            }
        }
    }

    \paper {
        page-count = #2
    }
}
