% Copied from "Easy Piano: Miss Siagon"
% pgs. 28-32

\include "globals.ly"

\header {
    title = "Sun and Moon"
    composer = "music by Claude-Michel Schönberg"
    poet = "lyrics by Alain Boublil"
}

both = \markup { \bold \fontsize #-1 "BOTH:" }
building = \markup { \italic \fontsize #-2 "building in excitement" }
chris = \markup { \bold \fontsize #-1 "CHRIS:" }
kim = \markup { \bold \fontsize #-1 "KIM:" }

melody = \relative c'' {
    \tempo "Sweetly"
    \key f \major
    \numericTimeSignature \time 4/4

    % pg 28
    g4. a8( a2) | g4. a8( a4) c4 | f,4. g8( g2) |
    f4. g8( g) f g c | f,4. g8( g2) | f4. g8( g4) c |
    e,4. f8( f2) | e4. f8( f4) a | d,1 |

    % pg 29
    c4. f8( f4) c4 | bf4. f'8( f4) bf,4 | g1 |
    g'4. a8( a2) | g4. a8( a4) c4 | c4. d8( d2) |
    c4. e8( e4) f4 | f4. e8( e4) d | d4. c8( c4) bf |
    bf4. a8( a4) g | f1 | d4. f8( f4) d |

    % pg 30
    c4. f8( f4) c4 | bf4. f'8( f4) bf | g2. f4 |
    f1 | e4. f8( f2) | e4. f8( f4) g |
    a1 | a4. b8( b2) | a4. b8( b4) c |
    c2. r8 d8 | d4. c8 c4. d8 | d4. c8 c4. ef8 |

    % pg 31
    ef4. d8 d4. ef8 | ef4. d8 d2 | r4 bf8 c d4 ef8 f |
    \key ef \major g1 | r1 |

    % pg 32
    \tempo "Tranquil" f,4. g8( g2) | f4. g8( g4) bf | bf4. c8( c2) |
    bf4. c8( c2) | bf4. ef8( ef4) bf | af4. ef8( ef4) af |
    f2. ef4 | ef1 | d4. ef8( ef2) |
    ef4. f8( f2) | f2( bf) | g1 |

    \bar "|."
}

decorations = \relative c'' {
    % pg 28
    s4.^\kim \p s8 s2 | s1 | s1 |
    s1 | s1 | s1 |
    s1 | s1 | s1 |

    % pg 29
    s1 | s1 | s1 |
    s4.^\chris s8 s2 | s1 | s1 |
    s1 | s1 | s1 |
    s1 | s1 | s1 |

    % pg 30
    s1 | s1 | s1 |
    s1 | s4.^\kim s8 s2 | s1 |
    s1 | s4.^\chris s8 s2 | s1 |
    s2. s8 s8^\kim | s4.^\building s8 s4. s8^\chris | s4. s8 s4. s8^\kim |

    % pg 31
    s4. s8 s4. s8^\chris | s1 | s4 \< s8^\both s8 s2 | %>
    s1 \ff | s1 |

    % pg 32
    s4.^\kim \p s8 s2 | s1 | s1 |
    s1 | s1 | s1 |
    s1 | s1 | s4.^\both s8 s2 |
    s1 | s1 | s1 |
}

firstVerse = \lyricmode {
    % pg 28
    You are sun -- light and I moon,
    joined by the gods of for -- tune, mid -- night and
    high noon shar -- ing the sky.

    % pg 29
    We have been blessed, you and I.
    You are here like a mys -- t'ry
    I'm from a world that's so dif -- f'rent from
    all that you are. How in the

    % pg 30
    light of the night did we come so
    far? Out -- side day starts to
    dawn. Your moon still floats on
    high. The birds a -- wake. The stars shine, too. My

    % pg 31
    hands still shake. I reach for you. and we meet in the
    sky.

    % pg 32
    You are sun -- light and I moon,
    joined here bright -- 'ning the sky with the
    flame of love. Made of
    sun -- light, moon -- light.
}

\book {
    \score {
        <<
            \new Staff \with {
                instrumentName = "Clarinet"
            } {
                \new Voice = "melody" {
                    << \melody \decorations >>
                }
            }
            \new Lyrics \lyricsto "melody" {
                \set fontSize = #-2
                \firstVerse
            }
        >>
    }
}
