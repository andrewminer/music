\version "2.12.3"
\include "english.ly"
\header {
    title = "Try to Remember"
    composer = "Music by Harvey Schmidt"
    poet = "Words by Tom Jones"
}

global = {
    \key g \major
    \time 3/4
    \tempo "Moderato"
}

melodyNotes = \relative c'' {
    b4. b8 b4 | b a g | c,4. c8 c4 | c d e | \break
    d2 b4 | g'2 d4 | e2 c4 | a'8 e8( e2) | \break
    b'4. b8 b4 | b4 a g | c4. c8 c4 | c4 d e | \break
    d,2 b4 | g'2 d4 | e2 c4 | a'8 e8( e2) | \break
    d'4. d8 d4 | d c b | c4. c8 c4 | c b a | \break
    b4. b8 b4 | b a g | a2 e4 | f8 d8( d2) | \break
    b'4. b8 b4 | b a g | c,4. c8 c4 | c d e | \break
}

melodyFirstEndingNotes = \relative c'' {
    b8 g8( g2) | r4 b8 g b g | b g b g b g | \break
    b g b g b g |
}

melodySecondEndingNotes = \relative c'' {
    b8 g8( g2) | r4 b8 g b g |  \break
    b g b g b g | b g b g b g | b4 g2( | g4) r2 | \break
}

melodyLyrics = \lyricmode {
    Try to re- mem- ber the kind of Sep- tem- ber when
    life was slow and oh, so mel- low._
    Try to re- mem- ber the kind of Sep- tem- ber when
    grass was green and grain was yel- low._
    Try to re- mem- ber the kind of Sep- tem- ber when
    you were a ten- der and cal- low fel- low._
    Try to re- mem- ber and if you re- mem- ber, then
}

melodyLyricsFirstEnding = \lyricmode {
    fol- low._ Fol- low, fol- low, fol- low, fol- low, fol- low,
    fol- low, fol- low, fol- low.
}

melodyLyricsSecondEnding = \lyricmode {
    fol- low._ Fol- low, fol- low,
    fol- low, fol- low, fol- low, fol- low, fol- low, fol- low, fol- low._
}

\score {
    \new Staff <<
        \global
        \new Voice = "melody" {
            \repeat volta 3 \melodyNotes
            \alternative {
                \new Voice = "firstEnding" \melodyFirstEndingNotes
                \new Voice = "secondEnding" \melodySecondEndingNotes
            }
        }
%         \new Lyrics \lyricsto "melody" \melodyLyrics
%         \new Lyrics \lyricsto "firstEnding" \melodyLyricsFirstEnding
%         \new Lyrics \lyricsto "secondEnding" \melodyLyricsSecondEnding
    >>
}

\layout {
    indent = 0
    \context {
        \Staff
        \override Rest #'staff-position = #-0.5
    }
}