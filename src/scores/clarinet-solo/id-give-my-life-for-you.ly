% Copied from "Easy Piano: Miss Siagon"
% pgs. 44-49

\include "globals.ly"

\header {
    title = "I'd Give My Life for You"
    composer = "music by Claude-Michel Schönberg"
    poet = "lyrics by Alain Boublil"
}

atempo = \markup \italic \fontsize #-1 "a tempo"
dramatically = \markup \italic \fontsize #-1 "dramatically"
rit = \markup \italic \fontsize #-1 "rit."

melody = \relative c' {
    \tempo "Slowly, with expression"
    \key bf \major
    \numericTimeSignature \time 4/4

    % pg 44
    \repeat volta 2 {
        r8 d d c c c c bf |
        bf2 c | r8 d f g d c c d |
        c8( bf4.) r2 | r4 bf8 c \tuplet 3/2 { c c bf } c d |

        % pg 45
        d2 r | r8 bf bf a a a c bf |
    }
    \alternative {{ g4 r2. | } { g2 r2 | }} r8 g' g f f f f ef |
    g2 r | r8 g g f f g f ef |
    g8 f ef4 \tuplet 3/2 { r8 f f } \tuplet 3/2 { f f f } | f2 \tuplet 3/2 { r8 g g } \tuplet 3/2 { g g g } |

    % pg 46
    g4. bf8 bf bf bf bf | bf2 r4 r8 ef8 |
    \key af \major \time 6/4 \tuplet 3/2 { c8[ c c] } c[ c] bf[ bf bf af] af4. bf8 |
        \time 4/4 \tuplet 3/2 { bf8[ bf bf] } bf[ bf] af af af g |
    g2 r | \key f \major r4 a8 a g4 g8 g |
    g8 f f4 g2 | r4 \tuplet 3/2 { a8 c d } a g g a |

    % pg 47
    g8( f4.) r2 | r8 f g f g f g a |
    a4 r4 r2 | r8 f f f e e g f |
    d4 r4 r2 | r8 d f d d c4. | r8 d f g c,2 |
    \tuplet 3/2 { a8 a a' } a g f g a4 | \time 6/4 \tuplet 3/2 { c,8[ c bf'] } a[ g] f[ g] a2. |

    % pg 48
    \time 4/4 \tuplet 3/2 { f8[ df' df] } df df c bf c4 | \tuplet 3/2 { f,8[ df' df] } df df c bf c4 |
    \tuplet 3/2 { c8[ c c] } c[ c] bf af bf4 |
    \time 6/4 \tuplet 3/2 { af8 af af } af4 \tuplet 3/2 { g8 g f } g4 r \tuplet 3/2 { g8 g a } |
    \time 4/4 a2 r | r1 | \key g \major r8 b b b a a a a |
    g2 a | r8 b d e b a a b |

    % pg 49
    a8( g4.) r2 | r8 g a g a g a b | b4 r2. |
    r8 g g g fs fs a g | e4 r2. | r8 g a g a g a b |
    \time 2/4 b2 | \time 4/4 r8 fs fs fs fs fs a g | e2 r2 |

    \bar "|."
}

decorations = \relative c' {
    % pg 44
    \repeat volta 2 {
        s8 s8 \mp s2. |
        s1 | s1 |
        s1 | s1 |

        % pg 45
        s1 | s1 |
    }
    \alternative {{ s1 } { s1 }} s1 |
    s1 | s1 |
    s1 | s1 |

    % pg 46
    s1 | s2^\rit s4 s8 s8 \bar "||" |
    \time 6/4 \tuplet 3/2 { s8^\atempo \f s s } s4 s1 | \time 4/4 s1 |
    s1 \bar "||" | s1 |
    s1 | s1 |

    % pg 47
    s1 | s1 |
    s1 | s1 |
    s4 \> s s s | s8 s8 \p s2. | s1 |
    s1 \bar "||" | \time 6/4 s1. |

    % pg 48
    \time 4/4 s1 | s1 |
    s1 | \time 6/4 s4 s s^\rit s s s |
    \time 4/4 s4^\atempo s2. | s1 \bar "||" | s1 |
    s1 | s1 |

    % pg 49
    s1 | s1 | s1 |
    s1 | s1 | s1 |
    \time 2/4 s2 | \time 4/4 s4^\dramatically s s s | s4. \ff s8 s2 |

    \bar "|."
}

firstVerse = \lyricmode {
    You who I cra -- dled in my
    arms. You, ask -- ing as lit -- tle as you
    can. Lit -- tle snip of a lit -- tle
    man, I know I'd give my life for
}

secondVerse = \lyricmode {
    You did -- n't ask me to be
    born, you. Why should you learn of war or
    pain? To make sure you're not hurt a --
    gain, I swear I'd give my life for
}

codaLyrics = \lyricmode {
    you. you. I've tast -- ed love be -- yond all
    fear. And you should know it's love that
    brought you here! And in one per -- fect night when the stars burned like
    new I knew what I must do. I'll
    give you a mil -- lion things I'll nev -- er own. I'll give you a world to con -- quer when you're
    grown. You will be who you
    want to be. You can choose what ev -- er heav -- en
    grants. As long as you can have your
    chance, I swear I'll give my life for
    you. Some -- times I wake up reach -- ing for him.
    I feel his sha -- dow brush my head, but there's just moon -- light on my bed.
    Was he a ghost? Was he a lie that made my bod -- y laugh and cry?
    Then by my side the proof I see, his lit -- tle one. Gods of the sun, bring him to
    me. You will be who you want to
    be. You can choose what -- ev -- er heav -- en
    grants. As long as you can have your chance,
    I swear I'll give my life for you. No one can stop what I must
    do. I swear I'll give my life for you.
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
                <<
                    \firstVerse
                    \new Lyrics {
                        \set associatedVoice = "melody"
                        \set fontSize = #-2
                        \secondVerse
                    }
                >>
                \codaLyrics
            }
        >>
    }
}
