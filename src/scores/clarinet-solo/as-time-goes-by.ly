\include "globals.ly"

\header {
    title = "As Time Goes By"
    subtitle = "From Casablanca"
    composer = "Herman Hupfeld"
}

melody = \relative c'' {
    \tempo Andante
    \numericTimeSignature \time 4/4
    \key ef \major

    s2. r8 g

    \repeat volta 2 {
        af8 g f ef f4. g8 | bf8 af g f af4. bf8 | ef8 d c bf c2 | r2 r4 d4 |
        f8 ef d c d4 ef | bf4 bf ef, f |
    }

    \alternative {{
        g1( | g2) r4 r8 g |
    } {
        g1( | g2) r2
    }}

    ef8 f ef c'( c4) c | c8 df c b c2 | f,8 g f c'( c4) c | c8 df c b c2 |
    g8 af g ef'( ef4) ef | ef8 d ef d f4 d | c4 c g g | bf2. r8 g \bar "||" |
    af8 g f ef f4. g8 | bf8 af g f af4. bf8 | ef8 d c bf c2 | r2 r4 d |
    f8 ef d c d4 ef | bf4 bf2 g4 | bf2 bf | ef1 \bar "|." |
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
