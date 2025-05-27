\version "2.24.4"

\paper {
    ragged-last = ##f
}

global = {
    \time 3/4
    \key e \minor
}

right = \relative c' {
  \global
    <e a e'>2. 
    <fis c' fis>
    <g b e g>
    <a e' a>
    <ais cis e ais>
    <b e b'>
    <b, dis a' b>
    <e gis e'>
}

left = \relative c {
  \clef bass
  \global
    <c e a c>2.
    <a c fis a>
    <e b' e>
    <c e c'>
    <fis cis' e>
    <g b e>
    <f b f'>
    <e b' e>
}

dynamics = {
    s2. \ff
    s2. * 7
}

\score {
    <<
        \new Staff \right
        \new Dynamics \dynamics
        \new Staff \left
    >>
    \layout { }
    \midi { \tempo 4 = 100 }
}
