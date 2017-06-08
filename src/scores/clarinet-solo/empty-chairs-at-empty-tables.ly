\include "globals.ly"

\header {
    title = "Empty Chairs at Empty Tables"
    composer = "Music by Claude-Michel Schönberg"
    poet = "Lyrics by Herbert Kretzmer"
}

melody = \relative c' {
    \tempo "Moderato"
    \numericTimeSignature \time 4/4
    \key a \minor

    r4 a'8 a b a g f         | f e4. ~ e2               |
    r4 a8 a b a g f          | f g4. ~ g2               | r4 g8 g a g f e          |
    e8 d4. r4 e8 f           | e4. e8 b4. c8            | e2. r4                   |
    r4 a8 a b a g f          | f e4. ~ e2               | r4 a8 a b a g f          |
%\pageBreak % Page 2 -------------------------------------------------------------------------------------------
    e8 g4. ~ g2              | r4 g8 g a g f e          | e d4. r4 e8 f            |
    e4. e8 b4. c8            | a1                       | r2. c8 c                 | c c4. d4. c8             |
    c8 a4. ~ a4 c8 d         | ef4. f8 g4. f8           | f d4. ~ d4 d8 e          |
    f4. g8 a4. g8            | g e4. r8 c8 c d'         | d2. d4                   |
    cs4 r8 cs8 d e r4        | f4. e8 d4. a8            | f2 r4. f'8               |
%\pageBreak % Page 3 -------------------------------------------------------------------------------------------
    g4. f8 e4. d8            | a4 f2.                   | s4 c'8 c d c bf a        |
    a2. g4                   | a1                       | r4 a8 a b a g f          | f e4. ~ e2               |
    r4 a8 a b a g f          | e g4. ~ g2               | r4 g8 g a g f e          |
    e d4. r4 e8 f            | e4. e8 b4. b8            | e1                       |
    \key d \minor
    d'4\rest d8 d e d c bf   | bf a4. ~ a2              | r4 d8 d e d c bf         |
%\pageBreak % Page 4 -------------------------------------------------------------------------------------------
    a8 c4. ~ c2              | r4 c8 c d c bf a         | a g4. ~ g4 a8 bf         |
    a4. a8 e4 f              | a2. r4                   | r4 d8 d e d f8. e16      |
    e8 a,4. ~ a2             | r4 d8 d e d c bf         | a c4. ~ c2               |
    r4 c8 c d c bf a         | a g4. ~ g4 a8 bf         | a4. a8 e4. f8            |
    d2 r2                    ||
}

dynamics = \relative c' {
    s4 \p s2.                | s1                       |
    s1                       | s1                       | s1                       |
    s1                       | s1                       | s1                       |
    s1                       | s1                       | s1                       |
%\pageBreak % Page 2 -------------------------------------------------------------------------------------------
    s1                       | s1                       | s1                       |
    s1                       | s1                       | s2. s8 \mf s8            | s1                       |
    s1                       | s1                       | s1                       |
    s1                       | s1                       | s1                       |
    s4. s8 \< s2             | s4. \f s8 s4 \> s4       | s2 \! s2                 |
%\pageBreak % Page 3 -------------------------------------------------------------------------------------------
    s1                       | s1                       | s4 s8 \p s8 s2           |
    s1                       | s1                       | s1                       | s1                       |
    s1                       | s1                       | s1                       |
    s1                       | s1                       | s1                       |
    s4 s8 \mf s8 s2          | s1                       | s1                       |
%\pageBreak % Page 4 -------------------------------------------------------------------------------------------
    s1                       | s1                       | s1                       |
    s1                       | s1                       | s1                       |
    s8 \f s8 s2.             | s1                       | s1                       |
    s4 s8 \> s8 s2           | s8 s4. \p s2             | s1                       |
    s2 \pp s2                |
}

words = \lyricmode {
    There's a grief that can't be spo -- ken,
    There's a pain goes on and on._ _ Emp -- ty chairs at emp -- ty
    ta -- bles, now my friends are dead and gone.
    Here they talked of rev -- o -- lu -- tion._ Here it was they lit the
%\pageBreak % Page 2 -------------------------------------------------------------------------------------------
    flame._ _ Here they sang a -- bout to -- mor -- row, and to --
    mor -- row nev -- er came. From the ta -- ble in the
    cor -- ner_ they could see a world re -- born._ _ And they
    rose with voi -- ces ring -- ing. And I can hear them
    now the ve -- ry words that they had sung be --
%\pageBreak % Page 3 -------------------------------------------------------------------------------------------
    came their last com -- mun -- ion on the lon -- ly bar -- ri --
    cade at dawn. Oh my friends my friends for -- give me._
    That I live and you are gone._ _ There's a grief that can't be
    spo -- ken. There's a pain goes on and on.
    Phan -- tom fa -- ces at the win -- down._ Phan -- tom sha -- dows on the
%\pageBreak % Page 4 -------------------------------------------------------------------------------------------
    floor._ _ Emp -- ty chairs at emp -- ty ta -- bles,_ where my
    friends will meet no more. Oh, my friends, my friends don't
    ask me what your sac -- ri -- fice was for. _
    Emp -- ty chairs and emp -- ty ta -- bles where my friends will sing no
    more.
}

\book {
    \score {
        \new Staff \with {
            instrumentName = Clarinet
        } {
            << \melody \dynamics >>

            \addlyrics {
                \set fontSize = #-2
                \words
            }
        }
    }
}
