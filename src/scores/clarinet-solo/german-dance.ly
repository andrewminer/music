\include "globals.ly"

\header {
    title = "German Dance"
    composer = "J. Haydn"
}

fine = \markup { \italic \fontsize #-2 "Fine" }
dcalfine = \markup { \italic \fontsize #-2 "D.C. al Fine" }
trio = \markup { \bold \fontsize #-1 "TRIO" }

melody = \relative c' {
    \tempo "Allegro giusto"
    \time 3/4
    \key g \major

    \repeat volta 2 {
        s2 b'8( c) | d4-! d-! b8( c) | d4-! d-! g-- | fs8 g a g fs e | d4 d a8( b) |
        c4-! c-! e8( d) | c4-! c-! c-- | b8 c d c b a | g4 g s |
    }
    \break
    \repeat volta 2 {
        s2 b4 | b8( c b) a'-. g-. fs-. | e4 e r | r2. | r2 g,4 |
        g8( a g) f'-. e-. d-. | e8( fs g) e-. d-. c-. | b8( d) b( g) a-. fs-. | g4 g s |
    }
    \break
    \repeat volta 2 {
        s2 d4 | g4( fs g | a2.) | d,2. | b8( d c e d4) |
        g4( fs g) | a2. | d,2. | g,2 s4 |
    }
    \break
    \repeat volta 2 {
        s2 b'4 | c4( b c | a2) a4 | d4( cs d | b2) d,4 |
        g4( fs g | a2.) | d,2. | g,2 s4 |
    }
}

decoration = \relative c' {
    \repeat volta 2 {
        s2 s8 \p s8 | s2. | s2 s4 \f | s2. | s2 s8 \p s8 |
        s2. | s2 s4 \f | s2. s2. |
    }
    \repeat volta 2 {
        s2 s4 \f| s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2.^\fine |
    }
    \repeat volta 2 {
        s2^\trio s4 \p | s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
    \repeat volta 2 {
        s2 s4 \f | s2. | s2. | s2. | s2 s4 \p |
        s2. | s2. | s2. | s2.^\dcalfine |
    }
}

\book {
    \score {
        \new Staff \with {
            instrumentName = "Clarinet"
        } {
            << \melody \decoration >>
        }
    }
}
