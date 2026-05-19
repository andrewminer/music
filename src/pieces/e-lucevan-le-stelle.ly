\include "globals.ly"

\header {
    title = "E Lucevan le Stelle"
    subtitle = "from Tosca"
    composer = "Puccini"
}


melody = \relative c' {
    \tempo "Andante lento appassionato molto"
    \numericTimeSignature
    \key b \minor

    %{  1 %} | \time 4/4 r4 r8 \p fs8--\downbow cs'8-- d-- e-- fs--
    %{  2 %} | \time 2/4 e8-- d-- cs8.-- fs,16(\downbow
    %{  3 %} | \time 3/4 b4.) b8--\upbow cs-- d--
    %{  4 %} | g,4( g8.) g16( a b cs d)
    %{ -- %}
    %{  5 %} | e8-- fs-- g-- a--\fermata \acciaccatura { g16 a16 } g8. e16(\upbow
    %{  6 %} | fs4) fs2\downbow
    %{  7 %} | r8 fs,8--\downbow_\markup { \italic "rit." } cs'-- d-- e-- fs--
    %{  8 %} | \time 2/4 e8 d \acciaccatura { cs16 d } cs8.\fermata fs,16(\downbow
    %{ -- %}
    %{  9 %} | \time 3/4 b4.) b8( cs d)
    %{ 10 %} | g4\downbow g2\upbow
    %{ 11 %} | r8 g8--\downbow\mf g--_\markup { \italic "stent." } g-- e8. cs16(
    %{ 12 %} | fs4.) b,8(\< cs e)\!
    %{ -- %}
    %{ 13 %} | b8 e-- e-- e-- cs8. as16(\upbow
    %{ 14 %} | ds4) ds2\>
    %{ 15 %} | \time 4/4 r8\! a e' f g a g16 f e16.\fermata a,32\upbow
    %{ 16 %} | \time 3/4 d8_\markup { \italic "affrett." } d4.\> cs8.(\downbow fs,16)\!
    %{ -- %}
    %{ 17 %} | b2.\upbow
    %{ 18 %} | \time 4/4 r8 fs8(_\markup { \italic "con grande sentimento" } cs' d e fs)
               e16( d cs16.)\fermata fs,32\downbow(
    %{ 19 %} | \time 3/4 b8) b4 b8( cs d)
    %{ 20 %} | g,4 g8. g16( a b cs d)
    %{ -- %}
    %{ 21 %} | e8( fs_\markup { \italic "rit." } g a) \acciaccatura { g16 a } g8. e16(
    %{ 22 %} | fs4) f2
    %{ 23 %} | r8 fs,8\downbow\mf cs'8_\markup { \italic "rit." } d e fs
    %{ 24 %} | \time 2/4 e8 d \acciaccatura { cs16 d } cs8.\fermata fs,16(\downbow
    %{ 25 %} | \time 3/4 b8) b4 b8\upbow cs d
    %{ 26 %} | g4\downbow\< g2\upbow
    %{ 27 %} | r8\! g8--\downbow g-- g-- \tuplet 3/2 { e4(\accent cs8) }
    %{ 28 %} | fs4 f2\>
    %{ 29 %} | r8\! e8--\downbow e-- e-- cs8. as16(\downbow
    %{ 30 %} | d4) d2\<\upbow_\markup { \italic "affrett." }
    %{ 31 %} | \time 4/4 r8\! a8--\f\downbow_\markup { \italic "cresc." } e'-- f-- g-- a--\fermata
               g16\upbow f e a,
    %{ 32 %} | \time 3/4 d8 d4. \tuplet 3/2 { cs8-- cs8.-- fs,16( }
    %{ 33 %} | \tempo Lento b8) b4.\downbow r4 \bar "|."
}
