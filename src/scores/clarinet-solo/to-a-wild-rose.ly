\include "globals.ly"

\header {
    title = "To a Wild Rose"
    composer = "Edward MacDowell"
}

cresc = \markup { \italic \fontsize #-2 "cresc." }
dim = \markup { \italic \fontsize #-2 "dim." }
pocomarc = \markup { \italic \fontsize #-2 "poco marc." }

melody = \relative c'' {
    \tempo "Simplice, con tenerezza"
    \numericTimeSignature \time 2/4
    \key g \major

    b8( d d4) | a8( d d4) | b8( d e g | e4 b) | e,8( a a4) | b4( fs) |
    e8( a a4 | g2) | b8( d d4) | a8( d d4) | b8( d e g | fs4 e) | g4( e) |
    d4( b) | e,8( a a4 | g2) | r2 | r2 | r2 | r2 |
    d'8( b b4) | cs2 | d8( b b4) | cs2 | d2( | d2)( |
    d4) r | r2 | b8( d d4) | a8( d d4) | b8( d e g | e4 b) | e,8( a a4) |
    b4( fs) | e8( a a4 | g2) | r2 | r2 | c2( |
    b4) d--\(( | d4.) cs8 | c8 g g4\) | b8( a g a | b4 d) | r2 |
    r4 g,( | e2 | d2) | e8( g4.)( | g2)( | g4) r |
    \bar "|."
}

decoration = \relative c' {
    s8 \mp s8 s4 | s2 | s8 \< s8 s4 \! | s4 \> s4 \! | s8 \mp s8 s4 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s8 \mp s8_\pocomarc s4 | s2_\cresc | s2 | s2 | s2 \f \> | s2 |
    s4 \! s4 | s2 | s8 \mp s8 s4 | s2 | s8 \< s8 s4 \! | s4 \> s4 \! | s8 \mp s8 s4 |
    s2 | s2 | s2 | s2 | s2 | s2 \pp |
    s4 s4 \mp | s2 | s2 | s8_\dim s8 s4 | s2 | s2 |
    s4 s4 \pp | s2 | s2 | s8 s4. \> | s2 | s4 \! s4 |
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
