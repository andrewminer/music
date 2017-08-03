% Copied from "Easy Piano: Miss Siagon"
% pgs. 62-65

\include "globals.ly"

\header {
    title = "Bui Doi"
    composer = "music by Claude-Michel Schönberg"
    poet = "lyrics by Alain Boublil"
}

atempo = \markup \italic \fontsize #-1 "a tempo"
john = \markup { \bold \fontsize #-1 "JOHN:" }
men = \markup { \bold \fontsize #-1 "MEN:" }
rit = \markup \italic \fontsize #-1 "rit."

melody = \relative c'' {
    \tempo "Moderately slow"
    \key c \major
    \numericTimeSignature \time 4/4

    % pg 62
    \repeat volta 2 {
        r8 g g g g g( \tuplet 3/2 { g) g g } |
        g4( \tuplet 3/2 { g8) g g } g g \tuplet 3/2 { g a b } | c4. c,8 c c c a' |
        a4 \tuplet 3/2 { a8 g a } g4 d8 f | g4 r2. | r8 g g g g g( \tuplet 3/2 { g) g g } |
        g4 \tuplet 3/2 { g8 g g } g g a b | c4 \tuplet 3/2 { c8 c c } c b c e |

        % pg 63
        e8 d4 d8 d a b c | d2 r8 g, e' d |
        c2 r8 g f' e | d2 r8 g, g' f | e2 r8 c c' b |
        a2 r8 a8 a a | a8 g4 c8 g f4 f8 |
        \tuplet 3/2 { e8 ds e } \tuplet 3/2 { gs e d } c4 \tuplet 3/2 { c8 b c } | d4 \tuplet 3/2 { c8 b c } e4 \tuplet 3/2 { e8 e e } |

        % pg 64
        \time 2/4 e8 d d c | \time 4/4 c4. r8 r2 |
    }
    r8 b16 c d8 e c2 |
    r8 d16 e f8 g e2 | r8 e16 ds e8 gs fs2 |
    r8 fs16 es fs8 a gs2 | \time 2/4 r8 a, fs' e \bar "||" |
    \key d \major \time 4/4 d2 r8 a8 g' fs | e2 r8 a,8 a' g |

    % pg 65
    fs2 r8 d d' cs | b2 r8 b b b | b8 a4 d8 a g4 g8 |
    \tuplet 3/2 { fs f fs } \tuplet 3/2 { as fs e } d2 | \time 2/4 r8 fs fs e |
    \time 4/4 d2. \tuplet 3/2 { fs8 fs e } | d2. \tuplet 3/2 { fs8 fs e } |
    d4 \tuplet 3/2 { fs8 fs fs } e\fermata e d cs | a'1( | a1)

    \bar "|."
}

decorations = \relative c'' {
    % pg 62
    \repeat volta 2 {
        s8^\john s8 \mp s2. |
        s1 | s1 |
        s1 | s1 | s1 |
        s1 | s1 |

        % pg 63
        s1 | s2^\rit s2 |
        s2^\atempo s2 | s1 | s1 |
        s1 | s1 |
        s1 | s1 |

        % pg 64
        \time 2/4 s2 | \time 4/4 s1 |
    }
    s1 |
    s1 | s1 |
    s1 | \time 2/4 s8^\men s8 \< s4 | %>
    \time 4/4 s2 \ff s2 |s1 |

    % pg 65
    s1 | s1 | s1 |
    s1 | \time 2/4 s2 |
    \time 4/4 s1 | s1 |
    s1 | s1 | s1 |
}

firstVerse = \lyricmode {
    Like all sur -- vi -- vors, I once
    thought when I'm home I won't give a damn. But now I know I'm
    caught.  I'll ne -- ver leave Vi -- et --nam. War is -- n't o -- ver when it
    ends. Some pic -- tures nev -- er leave your mind. They are the fa -- ces of the
    chil -- dren, the ones we left be -- hind. They're called Bui
    Doi, the dust of life, con -- ceived in hell and born in
    strife.  They are the liv -- ing re -- min -- der of
    all the good we failed to do. That's why we know deep in our hearts that they are
    all our chil -- dren, too.
}

secondVerse = \lyricmode {
    These kids hit the wall on ev -- 'ry
    side. They don't be -- long in any -- y place. Their se -- cret they can't
    hide, it's print -- ed on their face. I nev -- er thought one day I'd
    plead for half breeds from a land that's torn. But then I saw a camp for
    chil -- dren whose crime was be -- ing born. _ _ _
    _ _ _ _ _ _ _ _ _ _ _ _
    _ We owe them fath -- ers and a fam -- 'ly, a
    lov -- ing home they nev -- er knew. Be -- cause we _ _ _ _ _ _ _ _
    _ _ _ _
}

codaLyrics = \lyricmode {
    These are souls in need.
    They need us to give. Some -- one has to pay
    for their chance to live. They're called Bui
    Doi, the dust of life, con -- ceived in
    hell and born in strife. They are the liv -- ing re -- min -- der of
    all the good we failed to do. That's why we
    know deep in our hearts, that's why we
    know that they are all our chil -- dren too.
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
