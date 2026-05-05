\include "globals.ly"

\header {
    title = "E Lucevan le Stelle"
    subtitle = "from Tosca"
    composer = "Puccini"
}

melody = \relative c'' {
    \tempo "Andante lento appassionato molto"
    \numericTimeSignature
    \key cs \minor

    %{  1 %} | \time 6/4 s4\p s8 gs8 ds' e fs(^\markup "rubando" gs fs e) ds8.^\markup "rit." gs,16
    %{  2 %} \bar "||" \time 3/4 cs4. cs8( ds8 e8
    %{  3 %} | a,4~ a8.) a16( b cs ds e)
    %{  4 %} | fs8[ gs a b] \grace { a16 b16( } a8.) fs16(
    %{  5 %} | gs4) gs2(
    %{  6 %} | gs16) gs, ds' e fs( gs fs e) ds8. gs,16(
    %{  7 %} | cs4.)\< cs8( ds e
    %{  8 %} | a4) a2(\!\mf
    %{  9 %} | a8) a a a fs8. ds16(
    %{ 10 %} | gs2.)\>
    %{ 11 %} | s8\! gs gs gs ds8. bs16(\<
    %{ 12 %} | e4)\! e2\>
    %{ 13 %} \bar "||" \time 4/4 s8\!\mf b8(^\markup "so st'do vagamente" fs' gs) a( b) a16( gs fs b,)
    %{ 14 %} | \time 3/4 e8^\markup "affrett." e4. ds8.(^\markup "rit." gs,16
    %{ 15 %} | cs2.)
}
