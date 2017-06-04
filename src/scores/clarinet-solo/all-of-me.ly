% Taken from "The Best of Essential Eleemnts for Jazz"
% pgs. 2-3

\include "globals.ly"

\header {
    title = "All of Me"
    composer = "by Seymour Simons, Gerald Marks"
    arranger = "arr. Michael Sweeney"
}

melody = \relative c'' {
    \tempo "MEDIUM SWING"
    \numericTimeSignature \time 4/4
    \key c \major

    c4-> g8-- e-^ r2 |
    r2 c'8-- d-> c4-^ |
    \scoop b2. gs8-- e-^ | % line 1
    r1 |
    a4-> g8-- e-^ r2 |
    r4 ef4-^ e8-- bf'-> a4-. |
    g2 g8( e) g-- f->( f2.) r4 |
    e4-. ef8-- d->( d2) | % line 2
    r2 e8-- gs-> b-- d->( |
    d2.) cs8-- c-^ |
    r1 |
    r2 b4-. bf8-- a->( |
    a2) a8-- d-> b-- a->( |
    a2.) a8-- b( | % line 3
    b2.) r4 |
    r1 \segno |
    r8 g4.-> g4-. r |
    r1 |
    r4 gs8-- gs-- gs-- gs-^ r4 |
    r2 r4 a8( g) |
    bf8-- a-^ r4 r2 | % line 4
    r4 d8-- d->( d4) a8-- a->( |
    a4) d,8 e f g a c |
    d2 c4-. b8-- d->( |
    d2) r8 c4.-> |
    b2 e,4-. g8-- b->( |
    b2) r8 \mark \toCoda  a4. | % line 5
    c2 a4-. c8-- e->( |
    e2) e4. c8-^ |
    r1 |
    r1 | % line 6 up to the solo

    \mark \markup { \fontsize #-2 "SOLO" }
    r4 c4-. a8 ef e g |
    a8 c a c( c4) a-. |
    b2( b8) gs-> f-- e->( |
    e2.) r4 |
    r2 r4 f8( e) | % pg 3, solo, line 1
    a4-. af8-- g->( g2) |
    r2 f4 a8( g) |
    d'4-. cs8-- c->( c2) |
    gs8 a b a gs2( |
    g4) r4 r e-. | % pg 3, solo, line 2
    a8 b c b a2( |
    a4) r4 r2 |
    b4-. bf8-- a( a2) |
    r4 a8 fs a d b8-. |
    a2 d,8 e f a |
    c8 a bf b( b4) r \mark \markup { "D.S." } \bar "||" | % pg 3, solo, line 3
}

coda = \relative c'' {
    \mark \markup { \musicglyph #"scripts.coda" }
    \numericTimeSignature \time 4/4
    \key c \major

    c2 a4-. c8-- e->( |
    e1) | % line 8 starting from coda
    r1 |
    r2 r4 a,4-. |
    c2 a4-. c8-- e->( |
    e2) e4. c8-^ |
    r1 |
    r2 r4 b->( |
    b1) \fermata \bar "|." |
}

\book {
    \score {
        \new Staff \with {
            instrumentName = "Clarinet"
        } {
            \melody
        }
    }

    \score {
        \layout {
            indent = 0
        }
        \new Staff {
            \coda
        }
    }
}
