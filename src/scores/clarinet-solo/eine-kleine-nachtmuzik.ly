% Copied from Easy Classical Clarinet Solos by Javier Marcó
% pg 14

\include "globals.ly"

\header {
    title = "Eine Kleine Nachtmuzik"
    composer = "by W. Mozart"
    arranger = "arr. Javier Marcó"
}

melody = \relative c'' {
    \tempo "Allegro"
    \numericTimeSignature \time 4/4
    \key g \major

    g4 r8 d g4 r8 d | g8 d g b d4 r | c4 r8 a8 c4 r8 a | c8 a fs a d,4 r |
    g4 g( g8) b a g | g fs fs4( fs8) a c fs, | a8 g g4( g8) b a g | g8 fs fs4( fs8) a c fs, |
    g8-. g-. g16 fs e fs g8-. g-. b16 a g a | b8-. b-. d16 c b c d4 r | d2( e) |
    d8( c) c4 c8( b) b4 | b8( a) a4 g8 fs e fs | g4-. a-. b-. r | d2( e) |
    d8( c) c-. c-. c( b) b-. b-. | b8( a) a-. a-. g fs e fs | g4 r8 d b g b d | g d g b d4 d, |
    g4 r8 d b g b d | g d g b d4 d, | g4 d8 d g4 d8 d | g1 |
}

decoration = \relative c' {
    s4 \f s2. | s1 | s1 | s1 |
    s4 \mf s2. | s1 | s1 | s1 |
    s1 | s1 | s2 \p s2 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s4 s8 s8 \f s2 | s1 |
    s4 s8 s8 \mf s2 | s1 | s4 s8 \f s8 s2 | s1 \bar "|." |
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
