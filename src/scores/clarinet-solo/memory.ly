\include "globals.ly"

\header {
    title = "Memory"
    composer = "Andrew Lloyd Webber"
}

melody = \relative c'' {
    \tempo Andante
    \key a \minor
    \time 6/8
    
    \repeat volta 2 {
        c4. c~              | c8 b c d c a      | c4. c~            | c8 b c d c g      |
        a4. a~              | a8 f g a g f      | e2.~              | e4. e4 g8         |
        g4. d4 e8           | f4 g8 a4 b8       | c b a g4.~        | g r8 e c          |
    }
    \alternative {
        { g'2.~ | g4 a,8 a4 c8 | c2. }
        { g'4. g~ | g4. a,4 c8 | c2. }
    }
    \repeat volta 2 {
        \tempo "Faster, in two"
        b4. e               | b a               | b e               | b a               |
        b e                 | e d4 c8           | d4. d~            | d r4.             |
        g g                 | g8 b4~ b8 a g     | fs4. fs           | fs8 a4~ a4.       |
        r4 g8 b4 b8         | b4. cs            |

        \tempo "Original Tempo"
        d4.( a)             | a4. r             | c c~              | c8 b c d c a      |
        c4. c~              | c8 b c d c g      | a4. a~            | a8 f g a g f      |
        e2.~                | e4. e4 g8         | g4. d4 e8         | f4 g8 a4 b8       |
        c b a g4.~          | g e4 c8           |
    }
    \alternative {
        { g'4. g~ | g a,4 c8 | c2.}
        { g'4. g~ | g a4 c8 | c2. }
    }
    \bar "|."
}

\book {    
    \score {
        \new Staff \with {
            instrumentName = "Clarinet"
        } {
            \transpose bf c' \melody
        }
    }
}
