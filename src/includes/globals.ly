\version "2.18.2"
\language english

\include "functions.ly"

\header {
	subtitle = \markup { \vspace #1 }
	tagline = ""
}

\layout {
    indent = 0.5 \in
    
    \context {
        \Score
        proportionalNotationDuration = #(ly:make-moment 1/8)
	}
}

\paper {
	#(set-paper-size "letter")
	top-margin = 0.5 \in
	right-margin = 1.0 \in
	left-margin = 1.0 \in
	bottom-margin = 0.5 \in

	system-system-spacing = #'(
        (basic-distance . 12)
		(minimum-distance . 6)
		(padding . 3)
		(stretchability . 24)
    )

	markup-system-spacing = #'(
        (basic-distance . 6)
		(minimum-distance . 3)
		(padding . 3)
		(stretchability . 12)
    )
}
