\include "globals.ly"

\header {
  title = "A New Life"
  composer = "Frank Wildhorn"
}

melody = \relative c' {
  \numericTimeSignature
  \time 4/4
  \key cs \minor
  \tempo Moderately
  r1                          | r1                          | r1                          | r1                          |
  r2 r4 r8 b                  | fs'2 e                      | fs8 e4 fs16 gs fs8 e~ \tuplet 3/2 { e ds e } | ds2 cs     |
  ds8 cs4 ds16 e fs8 e4 fs16 gs | gs2 fs2                   | gs8 fs gs fs gs a gs8. fs16 | b,2~ b4. b8                 |
  fs'2 e                      | fs8 e fs gs fs e4 ds16 e    | ds2 cs                      | r8 ds16 cs ds8 e fs4~ fs16 e fs gs |
  gs2 fs2                     | r8 gs16 fs gs8 fs gs a gs8. fs16 | b,2~ b4. b8            | gs'2 fs                     |
  gs8 fs~ \tuplet 3/2 { fs gs a } b8 a~ \tuplet 3/2 { a gs b } | b2 e,                    | r2 r4 r8 cs8                |
  gs'2 fs                     | gs8 fs gs a b a gs b        | e,2 r4 r8 cs8               | gs'2 fs                     |
  gs8 fs gs fs a8. \fermata gs16 fs8 gs | fs4 e2.           | r2 r8 e8 ds e               | b2~ b8 b fs'8. gs16         |
  b,2. r8 b8                  | fs'2 e                      | r8 fs16 e fs8 gs fs e~ \tuplet 3/2 { e ds e } | ds2 cs    |
  r8 ds16 cs ds8 e fs e~ \tuplet 3/2 { e fs gs } | gs2 fs   | r8 gs16 fs gs8. fs16 gs16 a8. gs8 fs | b,2. r8 b8         |
  fs'2 gs                     | r8 fs16 gs fs8. e16 fs8 gs~ \tuplet 3/2 { gs fs e }       | fs2 gs                      |
  r8 fs16 gs fs8. e16 fs8 gs~ \tuplet 3/2 { gs fs e }       | gs2 a                       | r8 gs16 a gs8. fs16 gs8 a~ \tuplet 3/2 { a gs fs } |
  b,1                         | r2 r4 r8 b8                 |
  \key e \minor
  a'2 g                       | a8 g a b \tuplet 3/2 { a4 g8~ } \tuplet 3/2 { g fs g }    | fs2 e                       |
  fs8. e16 fs8 g a4~ a16 g a b | b2 a                       | b8 a b8. a16 b4~ b16 d b a  | d,2 r4 r8. d16              |
  a'2 b                       | r8 a16 b a8. g16 a8 b8~ \tuplet 3/2 { b a g }             | a2 b                        |
  r8 a16 b a8. g16 a4 \tuplet 3/2 { b8 a g } | b2 c         | b16 c b4 a8 b16 c b4 a8     | g1                          |
  b8 c b a b c \fermata d8. b16 | \grace { b16 a } g2~ g8 g fs e | d'2. g,4               | b1~                         |
  b                           | r                           | r                           |
}

words = \lyricmode {
  A new life, what I would -- n't give to have a new life.
  One thing I have learned as I go through life,
  noth -- ing is for free a -- long the way.
  A new start, that's the thing I need to give me new heart.
  Half a chance in life to find a new part,
  just a sim -- ple role that I can play.
  A new hope, some -- thing to con -- vince me to re -- new hope.
  A new day, bright e -- nough to help me find my way.
  A new chance, one that may -- be has a touch of ro -- mance.
  Where can it be, the chance for me?
  A new dream, I have one I know that ver -- y few dream.
  I would like to see that o -- ver -- due dream,
  e -- ven though it ne -- ver may come true.
  A new love, though I know there's no such thing as true love.
  E -- ven so, al -- though I nev -- er knew love,
  still I feel that one dream is my due.
  A new world, this one thing I want to ask of you, world.
  Once be -- fore it's time to say a -- dieu, world,
  one sweet chance to prove the cyn -- ics wrong.
  A new life, more and more I'm sure as I go through life.
  Just to play the game and to pur -- sue life,
  just to share its pleas -- ures and be -- long,
  that's what I've been here for all a -- long.
  Each day's a brand new life.
}

\score {
  <<
    \new Staff \with {
      instrumentName = "Clarinet"
    } {
      \naturalizeMusic
      \transpose c bf
      \melody
      \addlyrics { \words }
    }
  >>
  \layout {
    \context {
      \Score
      proportionalNotationDuration = #(ly:make-moment 1/8)
    }
  }
}
