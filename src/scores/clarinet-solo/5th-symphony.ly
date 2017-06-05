% Copied from Easy Classical Clarinet Solos by Javier Marcó
% pg 25

\include "globals.ly"

\header {
    title = "Theme from Symphony No. 5, Mv. 1"
    composer = "by L. van Beethoven"
    arranger = "arr. A. Miner"
}

cantibile = \markup {
    \fontsize #-2 \italic "cantibile"
}

pocoCresc = \markup {
    \fontsize #-2 \italic "poco a poco cresc."
}

pocoAccel = \markup {
    \fontsize #-2 \italic "poco a poco accel."
}

sempreAccel = \markup {
    \fontsize #-2 \italic "sempre crescendo e accelerando"
}

melody = \relative c'' {
    \tempo "Andante"
    \numericTimeSignature \time 4/4
    \key d \minor

    s2 s8 a a a | f2 r8 g8 g g | e2 r8 a8 a a | f8 bf bf bf a f' f f | d2 r8 a8 a a |
    e8 bf' bf bf a g' g g | e2 r8 a a g | f2 e8 a a g | f2 e8 a a g | f4 r d r |
    a'2 r8 bf bf bf | g8 e e e cs bf bf bf | g8 e e e f bf bf bf | g8 e e e cs bf bf bf |
    g8 e e e f a a bf | d2 cs8 cs cs e | e2 d8 d d f | f8 e e g g fs fs a |
    a8 g g bf bf a a c | c8 bf bf d d cs cs e | d2 r8 c c c | f,2 g | c,2 c4 f |
    e4 f g d | d4 c c' f | e4 f g d | d4 c c d | ef4 d c d |
    c4 bf ef f | g4 f ef f | ef d f g | af4 g f g |
    af4 g f g | af4 g f g | af4 g af b | c2 c8 d c bf |
    bf8 a g f f e d e | g8 f c a e' d bf g | d'8 c a f r8 b c b | c8 b c b c d c bf |
    bf8 a g f f e d e | g8 f c a e' d bf g | d'8 c a f r c' c c | f2 r8 a a a | f2 r8 g g g |
    e2 r8 a a a | f8 bf bf bf a f' f f | d2 r8 a a a | e bf' bf bf a g' g g | e2 r8 a a a |
    a2 r8 cs,8 cs cs | d2 r8 cs,8 cs cs | d2 r8 a'' a a | d,2 r2 |

    \bar "|."
}

markings = \relative c'' {
    s2 s8 s8 \ff s4 | s1 | s2 s8 s8 \p s4 | s1 | s1 |
    s1 | s1 | s2 \cresc s2 | s1 | s4 \f s2. |
    s2 s8 s8 \mf s4 | s1 | s1 | s1 |
    s1 | s1 | s2 \cresc s2 \mark \pocoCresc | s1 |
    s8 \f s8 s2. | s8 \< s8 s2. | s2 \ff s2 | s1 | s2 \mark \cantibile s2 |
    s1 | s2 s2 \mf | s1 | s2 \mark \pocoAccel s2 | s1 |
    s2 s2 \cresc | s1 | s2 s2 \f | s1 |
    s2 \mark \sempreAccel s2 \ff | s1 | s4 \< s2. | s2\fz s8 \mf s8 s4 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s2 s8 s8 \ff s4 | s1 |
    s2 s8 s8 \p s4 | s1 s2 s8 s8 \mp s4 | s1 s2 s8 s8 \f s4 |
    s2 \ff s8 s8 \cresc s4 | s1 | s2 \fff s2 | s2 \fz s2 |
}

\book {
    \score {
        \new Staff \with {
            instrumentName = "Clarinet"
        } {
            << \melody \markings >>
        }
    }
}
