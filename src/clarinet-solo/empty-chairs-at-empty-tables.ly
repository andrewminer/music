\version "2.12.3"
\include "english.ly"
\header {
    title = "Empty Chairs at Empty Tables"
    composer = "Music by Claude-Michel Schönberg"
    arranger = "Lyrics by Herbert Kretzmer"
}

global = {
    \key a \minor
    \time 4/4
    \tempo "Slowly and Sadly"
}

melody = \relative c' {
    s1                       | s1                       | r4 a'8 a b a g f         | f e4. ~ e2               |%\break
    r4 a8 a b a g f          | f e4. ~ e2               | r4 g8 g a g f e          |                           %\break
    e8 d4. r4 e8 f           | e4. e8 b4. c8            | e2. r4                   |                           %\break
    r4 a8 a b a g f          | f e4. ~ e2               | r4 a8 a b a g f          |                           %\break
%\pageBreak % Page 2 -------------------------------------------------------------------------------------------
    e8 g4. ~ g2              | r4 g8 g a g f e          | e d4. r4 e8 f            |                           %\break
    e4. e8 b4. c8            | a1                       | r2. c8 c                 | c c4. d4. c8             |%\break
    c8 a4. ~ a4 c8 d         | ef4. f8 g4. f8           | f d4. ~ d4 d8 e          |                           %\break
    f4. g8 a4. g8            | g e4. r8 c8 c d'         | d2. d4                   |                           %\break
    cs4 r8 cs8 d e r4        | f4. e8 d4. a8            | f2 r4. f'8               |                           %\break
%\pageBreak % Page 3 -------------------------------------------------------------------------------------------
    g4. f8 e4. d8            | a4 f2.                   | s4 c'8 c d c bf a        |                           %\break
    a2. g4                   | a1                       | r4 a8 a b a g f          | f e4. ~ e2               |%\break
    r4 a8 a b a g f          | e g4. ~ g2               | r4 g8 g a g f e          |                           %\break
    e d4. r4 e8 f            | e4. e8 b4. b8            | e1                       |                           %\break
\key d \minor
    d'4\rest d8 d e d c bf   | bf a4. ~ a2              | r4 d8 d e d c bf         |                           %\break
%\pageBreak % Page 4 -------------------------------------------------------------------------------------------
    a8 c4. ~ c2              | r4 c8 c d c bf a         | a g4. ~ g4 a8 bf         |                           %\break
    a4. a8 e4 f              | a2. r4                   | r4 d8 d e d f8. e16      |                           %\break
    e8 a,4. ~ a2             | r4 d8 d e d c bf         | a c4. ~ c2               |                           %\break
    r4 c8 c d c bf a         | a g4. ~ g4 a8 bf         | a4. a8 e4. f8            |                           %\break
    d2 s2                    | s1                       | s1                       | s1                      ||%\break
}

dynamics = \relative c' {
    s8 s\pp s2.              | s1                       | s                        | s                        |%\break
    s                        | s                        | s8 s\p s2.               |                           %\break
    s1                       | s                        | s                        |                           %\break
    s8 s\mp s2.              | s1                       | s                        |                           %\break
%\pageBreak % Page 2 -------------------------------------------------------------------------------------------
    s                        | s                        | s                        |                           %\break
    s                        | s                        | s2. s8\mf s8             | s1                       |%\break
    s                        | s                        | s                        |                           %\break
    s                        | s2. s8 s8\f              | s1                       |                           %\break
    s                        | s                        | s                        |                           %\break
%\pageBreak % Page 3 -------------------------------------------------------------------------------------------
    s2. s8 s\>               | s4 s2.\!\p               | s1                       |                           %\break
    s2. s4\pp                | s1                       | s                        | s                        |%\break
    s                        | s                        | s                        |                           %\break
    s2. s8\p s               | s1                       | s                        |                           %\break
    s4\mf s2.                | s1                       | s                        |                           %\break
%\pageBreak % Page 4 -------------------------------------------------------------------------------------------
    s                        | s                        | s                        |                           %\break
    s                        | s                        | s4 s8\< s4. s8\!\f s8    |                           %\break
    s1                       | s4 s8\mf s8 s2           | s1                       |                           %\break
    s                        | s8\> s4. s4\! s8\p s8    | s1                       |                           %\break
    s                        | s                        | s                        | s                       ||%\break
}

pianoTrebleMusic = \relative c' {
    r4 e2 b'4                | a4 e2.                   | s1                       | s1                       |%\break
    s1                       | s1                       | s1                       |                           %\break
    s1                       | s1                       | s1                       |                           %\break
    s1                       | s1                       | s1                       |                           %\break
%\pageBreak % Page 2 -------------------------------------------------------------------------------------------
    s1                       | s1                       | s1                       |                           %\break
    s1                       | s1                       | s1                       | s1                       |%\break
    s1                       | s2 ef4. s8               | s1                       |                           %\break
    s1                       |                          | s1                       | f2. bf4                  |%\break
    a s8 a8 b cs s4          | a2 f2                    | d2 s2                    |                           %\break
%\pageBreak % Page 3 -------------------------------------------------------------------------------------------
    bf'2 bf                  | f4 d2.                   | <<{a'4 s2.}\\{f1}>>      |                           %\break
    e1                       | e                        | s                        | s                         %\break
    s                        | s                        | s                        |                           %\break
    s                        | s                        | cs                       |                           %\break
\key d \minor
    f                        | s                        | s                        |                           %\break
%\pageBreak % Page 4 -------------------------------------------------------------------------------------------
    s                        | s                        | s                        |                           %\break
    s                        | s                        | s                        |                           %\break
    s                        | s                        | s                        |                           %\break
    s                        | s                        | s                        |                           %\break
    s2 e'4 f                 | d2 e4 f                  | r4 d e4. f8              | a,1                     ||%\break
}

pianoBassVoiceIMusic = \relative c' {
    s8 b8 c4 ~ c2            | s8 b8 c4 ~ c2            | s8 b8 c4 ~ c2            | s8 b8 c4 ~ c2            |%\break
    s8 b8 c4 ~ c2            | s8 d8 e4 ~ e2            | s8 d,8 e4 ~ e2           |                           %\break
    s8 e8 f4 ~ f2            | s4 gs2.                  | s8 b8 c4 ~ c2            |                           %\break
    s8 b8 c4 ~ c2            | s8 b8 c4 ~ c2            | s8 b8 c4 ~ c2            |                           %\break
%\pageBreak % Page 2 -------------------------------------------------------------------------------------------
    s8 d8 e4 ~ e2            | s8 d,8 e4 ~ e2           | s8 e8 f4 ~ f2            |                           %\break
    s4 gs2.                  | a,4 a b c                | e b a2                   | s4 e' bf'2               |%\break
    f4 c f2                  | s4 g s a                 | s f s2                   |                           %\break
    s4 g f2                  | s4 g s2                  | s4 f s2                  |                           %\break
    s4 e s e                 | s a s f                  | s f s f                  |                           %\break
%\pageBreak % Page 3 -------------------------------------------------------------------------------------------
    g,2 g'                   | <<b4 g>> <<b2. g>>       | s4 a2.                   |                           %\break
    c,4 g'4 c,2              | s8 b'8 c4 ~ c2           | s8 b8 c4 ~ c2            | s8 b8 c4 ~ c2             %\break
    s8 b8 c4 ~ c2            | s8 d8 e4 ~ e2            | s8 d,8 e4 ~ e2           |                           %\break
    s8 e8 f4 ~ f2            | s4 gs2.                  | a4 e a g                 |                           %\break
\key d \minor
    s4 a2 a4                 | s8 f a f a f a f         | s8 a c a c a c a         |                           %\break
%\pageBreak % Page 4 -------------------------------------------------------------------------------------------
    s8 a c a c a c a         | s8 a c a c a c a         | s8 bf d bf d bf d bf     |                           %\break
    <<cs1 a1>>               | d,2 f4 a                 | d1                       |                           %\break
    d8 f d f d f d f         | d f d f d f d f          | c f c f c f c f          |                           %\break
    c f c f c f c f          | bf, d bf d bf d bf d     | <<cs1 a1>>               |                           %\break
    d,4 f a2                 | <<f'1 c1>>               | <<f1 bf,1>>              | <<f'1 d1>>              ||%\break
}

pianoBassVoiceIIMusic = \relative c' {
    a1                       | a1                       | a1                       | a1                       |%\break
    a1                       | c1                       | c,1                      |                           %\break
    d1                       | e1                       | a2. e4                   |                           %\break
    a1                       | a1                       | a1                       |                           %\break
%\pageBreak % Page 2 -------------------------------------------------------------------------------------------
    c1                       | c,                       | d                        |                           %\break
    e                        | s                        | s                        | c                        |%\break
    s                        | c2 f                     | bf, bf                   |                           %\break
    b1                       | c2 c                     | bf bf                    |                           %\break
    a a                      | d c                      | bf a                     |                           %\break
%\pageBreak % Page 3 -------------------------------------------------------------------------------------------
    s1                       | s                        | c                        |                           %\break
    s                        | a'                       | a                        | a                        |%\break
    a                        | c                        | c,                       |                           %\break
    d                        | e                        | s                        |                           %\break
\key d \minor
    d                        | d                        | d                        |                           %\break
%\pageBreak % Page 4 -------------------------------------------------------------------------------------------
    f                        | f                        | g                        |                           %\break
    s                        | s                        | s                        |                           %\break
    s                        | s                        | s                        |                           %\break
    s                        | s                        | s                        |                           %\break
    s                        | s                        | s                        | s                       ||%\break
}

melodyLyrics = \lyricmode {
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

%%%%%%%%%% Voice & Piano mixed on a grand staff %%%%%%%%%%
\score {
    \new PianoStaff <<
        \new Staff {
            \global
            <<
                \new Voice = "melody" {\voiceOne \melody} \\
                \voiceTwo \pianoTrebleMusic \\
                \voiceThree \dynamics
            >>
        }
        \new Lyrics \lyricsto "melody" \melodyLyrics
        \new Staff {
            \global
            \clef bass
            << \pianoBassVoiceIMusic \\ \pianoBassVoiceIIMusic >>
        }
    >>
    \layout {
        indent = 0
        \context {
            \PianoStaff
            \accepts "Lyrics"
        }
        \context {
            \Staff
            \override Rest #'staff-position = #-0.5
        }
        \context {
            \Lyrics
            \override LyricText #'font-size = #-1
            \override LyricSpace #'minimum-distance = #0.5
        }
        \context {
            \Score
            \override SeparationItem #'padding = #2.0
            \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 16)
        }
    }
}

%%%%%%%%%% Voice & Piano on separate staves %%%%%%%%%%
% \score {
%   <<
%       \new Staff {
%           \global
%           << { \new Voice = "melody" \melody } \\ \dynamics >>
%       }
%       \new Lyrics \lyricsto "melody" \melodyLyrics
%       \new PianoStaff <<
%           \new Staff \with { printPartCombineTexts = ##f } {
%               \global
%               << { \partcombine \melody \pianoTrebleMusic } \\ \dynamics >>
%           }
%           \new Staff {
%               \global
%               \clef bass
%               << \pianoBassVoiceIMusic \\ \pianoBassVoiceIIMusic >>
%           }
%       >>
%   >>
%   \layout {
%       \context {
%           \Lyrics
%           \override LyricText #'font-size = #-1
%           \override LyricSpace #'minimum-distance = #0.5
%       }
%       \context {
%           \Score
%           \override SeparationItem #'padding = #2.0
%       }
%   }
% }