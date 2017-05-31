% Copied from "Les Miserables: Piano/Vocal Selections"
% ISBN 978-0-88188-577-4
% pgs. 30-32

\include "globals.ly"

\header {
    title = "Castle on a Cloud"
    composer = "Music by Claude-Michel Schönberg"
}

\book {
    \score {
        \new Staff {
            \key a \minor
            \numericTimeSignature \time 3/4

            \naturalizeMusic \relative c' {
                \tempo Lento 4 = 54
				\repeat volta 2 {
					a'8 b16 c b8 a a gs | \time 2/4 a4 r | % pg 30, 1
					\time 3/4 a8 b16 c b8 a g f | \time 2/4 e4 r | % pg 30, 2
					\time 3/4 d8 e16 f e8 a b c | \time 2/4 a4 r | % pg 31, 1
					\time 3/4 d,8 e16 f e8 d c b % pg 31, 2
				}
				\alternative {
					{ \time 2/4 a4 r } % pg 31, 2
					{ \time 2/4 a4 r } % pg 31, 3
				}
				\time 4/4 f'8 e16 d c8. d16 e8. f16 e8( c) | % pg 31, 3
				a'8 g16 f e8. f16 g8. a16 g8 r16 g |
					bf8. a16 g8 f16 g a8. f16 c8[ r16 d] | % pg 31, 4
				e8[ r16 f] e8[ r16 f] e f e f e4 | \time 3/4 a8 b16 c b8 a a gs | % pg 32, 1
				\time 2/4 a4 r | \time 3/4 a8 b16 c b8 a g f | % pg 32, 2
				\time 2/4 e4 r | \time 3/4 d8 e16 f e8 a b c | % pg 32, 3
				\time 2/4 a4 r | \time 3/4 d,8 e16 f e8 d c b | a2.\fermata \bar "|." % pg 32, 4
            }

            \addlyrics {
                \set fontSize = #-2
				There is a cast -- tle on a cloud.
				I like to go there in my sleep.
				Aren't an -- y floors for me to sweep,
				not in my cas -- tle on a cloud. cloud.
				There is a la -- dy all in white,
				holds me and sings a lull -- a -- by. She's nice to see and she's soft to touch. She
				says, Co -- sette, I love you ver -- y much. I know a place where no one's
				lost, I know a place where no one
				cries. Cry -- ing at all is not al --
				lowed, not in my cas -- tle on a cloud.
            }
        }
    }

    \paper {
        page-count = #1
    }
}
