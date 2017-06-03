\include "globals.ly"

\header {
    title = "Minuet"
    composer = "J. S. Bach"
}

melody = \relative c'' {
    \tempo Allegretto
    \time 3/4
    \key g \major
    
    \repeat volta 2 {
        b4\mf g'8_\markup { \italic legato } (fs e ds) | e4 b c | ds,8 (fs a c b a) | g4 fs8( g) e4 \breathe |
        g4 c8( b) e( d) | \acciaccatura d g4 fs8( e d c) | b8 c16( d) g,4 fs |
    }
    \alternative {
        { g2 r4 }
        { g2. }
    }
    \repeat volta 2 {
        b'4 g,8( b' a g) | fs16 g a8 d,2 | g4 e,8( g' fs e) | ds16( e) fs8 b,2 \breathe |
        b8( cs ds e fs g) | a( fs) ds c'! b a | g16( fs) e8 fs4 ds |
    }
    \alternative {
        { e2 r4 }
        { e2. }
    }
}

\book {
    \score {
        \new Staff \with {
            instrumentName = "Clarinet"
        } {
            \numericTimeSignature
            \melody
        }
    }
}
