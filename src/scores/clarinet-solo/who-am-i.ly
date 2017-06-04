% Copied from "Les Miserables: Piano/Vocal Selections"
% ISBN 978-0-88188-577-4
% pgs. 27-29

\include "globals.ly"

\header {
    title = "Who Am I?"
    composer = "Music by Claude-Michel Schönberg"
}

melody = \relative c'' {
    \tempo Andante 4 = 60
    \key bf \major
    \numericTimeSignature

	\time 2/4 r4\pp r8 bf16 a | \time 4/4 f4 r r16 f bf a a g g f | g16 f d8 r4 r16 d g f f ef ef d | % pg 27, 1
	ef8. d16 bf4 r r8. g'16 | d' c c bf bf g g f d' c c a a f f g32 bf | % pg 27, 2
	g16(\p f8.) r4 r16 f bf a a g g f | g16 f d8 r4 r16 d g f f ef ef d | % pg 28, 1
	ef16 d bf8 r4 r r8. g'16 | d'16 c c bf bf g g f d' c c a a f f g32 bf | % pg 28, 2
	g16(\mf f8.) r f16 bf a a g g8. f16 | g16 f d8 r8. d16 g f f ef ef8. d16 | % pg 28, 3
	\pageBreak
	ef16 d bf8 r4 r r8. g'16 | d'16 c c bf bf g g f d' c c a a f f f | % pg 28, 4
	ef'16\f -"rall." d d c c bf a32 a a c c16 bf bf a bf8\fermata bf16 a | f4 r r2 | % pg 29, 1
	r2 r4 r8 bf16 a | f4 r8 f'8 f4 f | bf,4 r r2 | % pg 29, 2
	r2 r4 r8. d,16 | ef'8 d d c c8 bf a16 a a c | c8 bf bf a bf4 r8\fermata bf16 a | % pg 29, 3
	f4\ff r r2 | f'4 f f f | bf r4 r2 | % pg 29, 4
}

words = \lyricmode {
	Who am I? Can I con -- demn this man to slav -- er -- y, pre -- tend I do not see his
	ag -- o -- ny? This in -- no -- cent who wears my face who goes to judge -- ment in my place. Who am
	I? Can I con -- ceal my -- self for -- ev -- er -- more pre -- tend I'm not the man I
	was be -- fore? And must my name un -- til I die be no more than an al -- i -- bi? Must I
	lie? How can I ev -- er face my fel -- low men? How can I ev -- er face my --
	self a -- gain? My soul be -- longs to God, I know, I made that bar -- gain long a -- go. He
	gave me hope when hope was gone. He gave me strength to jour -- ney on. Who am I?
	Who am I? I'm Jean Val -- jean!
	And so, Ja -- vert, you see it's true. That man bears no more guilt than you. Who am
	I? Two, Four, Six, Oh, One!
}

\book {
    \score {
        \new Staff \with {
            instrumentName = "Clarinet"
        } {
			\transpose bf c' \melody

			\addlyrics {
				\set fontSize = #-1
				\words
			}
        }
    }
}
