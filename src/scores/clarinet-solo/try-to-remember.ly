\include "globals.ly"

\header {
    title = "Try to Remember"
    composer = "music by Harvey Schmidt"
    poet = "lyrics by Tom Jones"
}

melody = \relative c'' {
    \tempo "Moderato"
    \key g \major
    \time 3/4

    \repeat volta 2 {
        b4. b8 b4 | b a g | c,4. c8 c4 | c d e |
        d2 b4 | g'2 d4 | e2 c4 | a'8 e8( e2) |
        b'4. b8 b4 | b4 a g | c4. c8 c4 | c4 d e |
        d,2 b4 | g'2 d4 | e2 c4 | a'8 e8( e2) |
        d'4. d8 d4 | d c b | c4. c8 c4 | c b a |
        b4. b8 b4 | b a g | a2 e4 | f8 d8( d2) |
        b'4. b8 b4 | b a g | c,4. c8 c4 | c d e |
    }
    \alternative {{
        b'8 g8( g2) | r4 b8 g b g | b g b g b g | \break
        b g b g b g |
    } {
        b8 g8( g2) | r4 b8 g b g |
        b g b g b g | b g b g b g | b4 g2( | g4) r2 |
    }}
}

words = \lyricmode {
    \repeat volta 2 {
        Try to re- mem- ber the kind of Sep- tem- ber when
        life was slow and oh, so mel- low._
        Try to re- mem- ber the kind of Sep- tem- ber when
        grass was green and grain was yel- low._
        Try to re- mem- ber the kind of Sep- tem- ber when
        you were a ten- der and cal- low fel- low._
        Try to re- mem- ber and if you re- mem- ber, then
    }
    \alternative {{
        fol- low._ Fol- low, fol- low, fol- low, fol- low, fol- low,
        fol- low, fol- low, fol- low.
    } {
        fol- low._ Fol- low, fol- low,
        fol- low, fol- low, fol- low, fol- low, fol- low, fol- low, fol- low._
    }}
}

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
