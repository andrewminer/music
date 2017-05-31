\include "globals.ly"

\header {
    title = "Exercises in E♭"
    subtitle = \markup { \vspace #2 }
}

\layout {
    indent = 0

    \context {
        \Score
        \omit BarNumber
        proportionalNotationDuration = #(ly:make-moment 1/8)
    }
}

\book {
    \score {
        \new Staff {
            \key ef \major
            \time 4/4

            \naturalizeMusic \transpose c ef \relative c' {
                c8 d e f g a	 b c
                d e f g a b c b
                a g f e d c b a
                g f e d c4 r
                \bar "|."
            }
        }

        \header { piece = "scale" }
    }

    \score {
        \new Staff {
            \key ef \major
            \time 4/4

            \naturalizeMusic \transpose c ef \relative c' {
                c8 e d f e g f a
                g b a c b d c e
                d f e g f a g b
                c a b g a f g e
                f d e c d b c a
                b g a f g e f d
                c4 r2.
                \bar "|."
            }
        }

        \header { piece = "thirds" }
    }

    \score {
        \new Staff {
            \key ef \major
            \time 4/4

            \naturalizeMusic \transpose c ef \relative c' {
                c8 f d g e a f b
                g c a d b e c f
                d g e a f b g c
                a b b a c g b f
                a e g d f c e b
                d a c g b f a e
                g d f c e d c4
                \bar "|."
            }
        }

        \header { piece = "fourths" }
    }

    \score {
        \new Staff {
            \key ef \major
            \time 4/4

            \naturalizeMusic \transpose c ef \relative c' {
                c8 g' d a' e b' f c'
                g d' a e' b f' c g'
                d a' e b' f c' g b
                a a g b f c' e, b'
                d, a' c, g' b, f' a, e'
                g, d' f, c' e, b' d, a'
                c, g' d f c e c4
                \bar "|."
            }
        }

        \header { piece = "fifths" }
    }
}
