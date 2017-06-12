% Copied from "Easy Piano: Miss Siagon"
% pgs. 25-27

\include "globals.ly"

\header {
    title = "Why God Why?"
    composer = "music by Claude-Michel Schönberg"
    poet = "lyrics by Alain Boublil"
}

melody = \relative c'' {
    \tempo "Sustained, moderately slow"
    \key a \minor
    \numericTimeSignature \time 4/4

    % pg 24
    \repeat volta 2 {
        r8 c c c c4 c8 c |
        d4 e e2 | r8 g, g g g4 g8 g |
        b4 c c2 | r8 c c c c4 c8 c |

        % pg 25
        d4 e e2 | r8 g, g g g4 g8 g |
        b4 c c b8 c | c4( a2.) |
        r8 g a g a g a g | a1 |
        r8 c8 d c d c d c | d1 |

        % pg 26
        d2 c | d4 e c2 | r4 d8 e c4 e,4 |
        d'4 e c4. c8 | c8 a a c b c d c |
    }
    \alternative {{ c8 a a c b c d4 | r1 } { c8 a a c b c f4( }}
    f2) r2 | \key c \minor f2 ef | f4 g ef2 |

    % pg 27
    f4 g ef g, | f'4 g ef4. ef8 | ef8 c c ef d ef f ef |
    \time 3/4 ef8 c c ef d ef | \time 4/4 af2. g4 | g2 r2 |

    \bar "|."
}

decorations = \relative c'' {
    % pg 24
    \repeat volta 2 {
        s1 \p |
        s1 | s1 |
        s1 | s1 |

        % pg 25
        s1 | s1 |
        s1 | s1 |
        s1 | s1 |
        s1 | s2 \fermata s2 \< | %>

        % pg 26
        s2 \mf s2 | s1 | s1 |
        s1 | s1 |
    }
    \alternative {{ s1 | s1 } { s1 }}
    s1 | s2 \f s2 | s1 |

    % pg 27
    s1 | s1 | s1 |
    \time 3/4 s2. | \time 4/4 s2 s4 s4 | s1 |
}

firstVerse = \lyricmode {
    Why does Sai -- gon nev -- er
    sleep at night? Why does this girl smell of
    o -- rang -- trees? How can I feel good when
    noth -- ing's right? Why is she cool when there
    is no breeze? Vi -- et -- nam.
    You don't give an -- sers, do you friend?
    Just ques -- tions that don't ev -- er end.
    Why, God? Why to -- day? I'm all through here
    on my way. There's no -- thing left here that I'll miss, why
}

secondVerse = \lyricmode {
    Who is this girl in a
    rus -- ty bed? Why am I back in a
    fil -- thy room? Why is her voice ring -- ing
    in my head? Why am I high on her
    cheap per -- fume? Vi -- et -- nam.
    Hey, look I mean you no of -- fense.
    Buy why does no -- thing here make sense?
    Why, God? Show your hand. Why can't one guy
    un -- der -- stand? I've been with girls who knew much more. I
}

codaLyrics = \lyricmode {
    send me now a night like this? nev -- er felt con -- fused be -- fore.
    Why me? What's your plan?
    I can't help her, no one can. I liked my mem -- 'ries as they were, but
    now I'll leave re -- mem -- b'ring her. Just her.
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
