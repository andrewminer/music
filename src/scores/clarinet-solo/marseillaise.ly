\include "globals.ly"

\header {
  title = "La Marseillaise"
  composer = "Claude-Joseph Rouget de l‘Isle"
}

melody = \relative c' {
    \tempo "Alla marcia"
    \key g \major
    \numericTimeSignature \time 4/4
            
    r2 r8 r16 d16 d8. d16     | g4 g a a                | d4.(b8) g r16 g b8. g16          | e4 c'2 a8. fs16      |
    g2 r4 g8. a16             | b4 b b c8. b16          | b4 a r4 a8. b16                  | c4 c c d8. c16       |
    b2 r4 d8. d16             | d4(b8.) g16 d'4 b8. g16 | d2 r8 r16 d16 d8. fs16           | a2 c4 a8. fs16       |
    a4 g f!2                  | e4 g8. g16 g4 fs8. g16  | a2. r8 a8                        | bf4. bf8 bf[bf] c d  |
    a2. bf8 a                 | g4. g8 g(bf) a g        | g4 fs8 r8 r4 r8 r16 d'           | d2~d8. d16 b8. g16   |
    a2. r8 r16 d16            | d2~d8. d16 b8. g16      | a2~a8 r8 d,4                     | g2 r4 a4             |
    b2 r2                     | c2 d4 e                 | a,2~a8 r8 e'4                    | d2~d8. [b16 c8. a16] |
    g2. r4
}

dynamics = \relative c' {
    s2 s8 s16 s \f s4         | s1                      | s1                               | s1                   |
    s1                        | s1                      | s1                               | s1                   |
    s2 s4 s8. \ff s16         | s1                      | s2 s8 s16 s16 \p s4              | s1                   |
    s1                        | s1                      | s2. s8 s8 \<                     | s1                   |
    s2. \! s4                 | s1                      | s2 s4 s8 s16 s16 \ff             | s1                   |
    s1                        | s1                      | s1                               | s1                   |
    s1                        | s1                      | s1                               | s1                   |
    s1                        |
}

markings = \relative c' {
    s1                        | s1                      | s1                               | s1                   |
    s1                        | s1                      | s1                               | s1                   |
    s1                        | s1                      | s1                               | s1                   |
    s1                        | s1                      | s1                               | s1                   |
    s1                        | s1                      | s1 \bar "||"                     | s1                   |
    s1                        | s1                      | s1                               | s1                   |
    s1                        | s1                      | s1                               | s1                   |
    s2. \fermata s4 \bar "|." |
}

words = \lyricmode {
  Al -- lons en -- fants de la Pa -- tri -- e,
  Le jour de gloire est ar -- ri -- vé.
  Con -- tre nous, de la ty -- ran -- ni -- e,
  L'é -- ten -- dard sang -- lant est le -- vé,
  l'é -- ten -- dard __ sang -- lant est le -- vé
  En -- ten -- dez -- vous, dans les cam -- pag -- nes
  Mu -- gir ces fa -- rou -- ches sol -- dats.
  Ils vien -- nent jus -- que dans nos bras
  é -- gor -- ger vos fils, __ vos com -- pag -- nes.
  Aux ar -- mes ci -- toy -- ens!
  For -- mez __ vos ba -- tail -- lons, __
  Mar -- chons, mar -- chons!
  Qu'un sang im -- pur __
  A -- breu -- ve nos sil -- lons.
}

\book {
    \score {
        \new Staff \with {
            instrumentName = "Clarinet"
        } {
            << \melody \dynamics \markings >>
            
            \addlyrics {
                \set fontSize = #-2
                \words
            }
        }
    }
}
