% Copied from Easy Classical Clarinet Solos by Javier Marcó
% pg 19

\include "globals.ly"

\header {
    title = "Greensleeves"
    composer = "Traditional"
    arranger = "arr. Javier Marcó"
}

melody = \relative c' {
    \tempo "Andante"
    \time 3/4
    \key c \major

    r2 a4 \mf           |

    \repeat volta 2 {
        c2 d4               | e4. f8 e4         | d2 b4             | g4. a8 b4         |
        c2 a4               | a4. gs8 a4        | b2 gs4            | e2 a4             |
        c2 d4               | e4. f8 e4         | d2 b4             | g4. a8 b4         |
        c4. b8 a4           | gs4. fs8 gs4      | a2 a4             |
    }

    \alternative {{ a2 a4 } { a2. }}

    \repeat volta 2 {
        g'2.                | g4. f8 e4         | d2 b4             | g4. a8 b4         |
        c2 a4               | a4. fs8 a4        | b2 gs4            | e2.               |
        g'2.                | g4. f8 e4         | d2 b4             | g4. a8 b4         |
        c4. b8 a4           | gs4. fs8 gs4      | a2 a4             | a2.               |
    }
}
