% Copied from Easy Classical Clarinet Solos by Javier Marcó
% pg 21

\include "globals.ly"

\header {
    title = "Jesu, Joy of Man Desiring"
    composer = "by J.S. Bach"
    arranger = "arr. Javier Marcó"
}

melody = \relative c' {
    \tempo "Lento"
    \time 3/4
    \key c \major

    \tuplet 3/2 4 {
        r8 \mf c( d) d( g f) f( a g) | g8( c b) c( g e) c( d e) | f8( g a) g( f e) d( e c) | b8( c d) g,( b d) f( e d) |
        e8( c d) e( g f) f( a g) | g8( c b) c( g e) c( d e) | a,8( g' f) e( d c) g( c b) | c8( d g) c( g e) c( e g) |
    }

    \break
    \repeat volta 2 {
        e2 f4 | g2 g4 | f2 e4 | \tuplet 3/2 4 { d8( g, a) b( d c) d( f e) | f8( d b) g( b d) f( e d) | } \break
        e2 f4 | g2 e4 | d8 e16 f e4 d |
        \tuplet 3/2 4 {
            c8( e d) e( g f) f( a g) |
            g8( c b) c( g e) c( d e) | f8( g a) g( f e) d( e c) | b8( c d) g,( b d) f( e d) | e8( c d) e( g f) f( a g) |
            g8( c b) c( g e) c( d e) |
        }
    }

    \alternative {{
        \tuplet 3/2 4 { a,8( g' f) e( d c) g( c b) | }
    } {
        \tuplet 3/2 4 { a8( \mark "rall." g' f) e( d c) g( c b) | }
    }}

    c2. \bar "|." |
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
