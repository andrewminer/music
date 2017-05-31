\include "globals.ly"

\header {
  title = "Once Upon a Dream"
  composer = "Frank Wildhorn"
}

melody = \relative c'' {
    \time 4/4
    \key cs \minor
    r4\p gs8 a b4. b,8      | cs1\mp                    | r4 ds8 e fs4. ds8     | b4. gs'8 gs2          |
    r4 gs8 a b4. b,8        | ds4. cs8 cs2              | r4 ds8 e fs4. e8      | e1                    |
    r4 gs8 a b4. b,8        | cs1                       | r4 ds8 e fs4. ds8     | b4. gs'8 gs2          |
    r4 gs8 a b4. b,8        | ds4. cs8 cs2              | r4 ds8 e fs4. e8      | e2. r8 e8             |
    ds8\mf e ds b cs4. e8   | ds8 e ds b cs fs4 e8      | ds8 e ds b cs4. e8    |
    \time 2/4
    ds e ds gs
    \time 4/4
    gs1\f                   | r4 as8\mf b cs4. cs,8     |
    \key ds \minor
    ds1\mp                  | r4 es8 fs gs4. es8        | cs4. as'8 as2         | r4 as8 b cs4. cs,8    |
    fs4. ds8 ds2            | r4 es8 fs gs4. as8        | fs1                   | r4 fs4 es ds          |
    cs'4. fs,8 fs2          | r4 gs8^ "rit." as fs4 gs  | fs1~^ "a tempo"       | fs~                   |
    fs\fermata              |
    \bar "|."
}

words = \lyricmode {
  Once up -- on a dream, I was lost in love's em -- brace.
  There I found a per -- fect place, once up -- on a dream.
  Once there was a time like no oth -- er time be -- fore.
  Hope was still an o -- pen door, once up -- on a dream.
  And I was un -- a -- fraid, the dream was so ex -- cit -- ing,
  but now I see it fade and I am here a -- lone.
  Once up -- on a dream, you were hea -- ven sent to me.
  But it was -- n't meant to be. Now you're just a dream.
  Could we be -- gin a -- gain, once up -- on a dream?
}

\layout {
    indent = 0.5 \in
    
    \context {
        \Score
        proportionalNotationDuration = #(ly:make-moment 1/8)
    }
}

\score {
    \new Staff \with {
        instrumentName = "Clarinet"
    } {
        \numericTimeSignature
        \tempo Moderately
        
        \naturalizeMusic
        \transpose bf df'
        \melody
        
        \addlyrics {
            \set fontSize = #-2
            \words
        }
    }
}
