\version "2.18.2"

\header {
  tagline = ##f
}

\paper {
  indent = 0\in
  %ragged-last = ##t
  #(set-paper-size "letter" 'landscape)
}

globalA = {
  \key e \minor
  \time 3/4
}

themeR = \relative e' {
  \clef treble
  \globalA
  <e a e'>2.
  <fis c' fis>
  <g b e g>
  <a e' a>
  <ais cis e ais>
  <b e b'>
  <b, dis a' b>
  <e gis e'>
}

varIR = \relative e {
  r4 <e a e'>8^! r r4
  r4 <a c e fis>8^! r r4
  r4 <g b e g>8^! r r4
  r4 <a e' a>8^! r r4
  r4 <ais cis e ais>8^! r r4
  r4 <b e b'>8^! r r4
  \clef bass r4 <dis, a' b>8^! r r4
  \clef treble
    r
    <<
    {
      e''4 (d!
      cis a \stemDown b
      c!)
    }
    \\
    {
      <e, gis>8 r r4
      s2.
      s4
    }
  >>
  \stemNeutral
  \slurUp
  <d' b' d> (<c a' c>
  <b g' b>)
  <<
    {
      \stemDown
      <a' fis' a> (<g e' g>
      <fis d' fis> <d a' d> <e g e'>
      <fis a fis'>
      <g g'> <fis fis'>
      <e e'>)
    }
    \\
    {
      s2
      s2.
      s4 \stemUp \tieUp ais2 ~
      ais4
    }
  >>
  << { \stemDown \slurUp <g, g'> (<a fis' a>
  <b g' b> <cis a' cis> <dis fis dis'>
  <a' c a'> <g b g'> <fis a fis'>)
    }
    \\
    {
        s2
        \stemUp
        e2 s4
        s2.
    }
  >>
}

varIIIR = \relative e' {
   <e g c e>4-. <dis fis b dis>-. <e g c e>-.
   << { <fis fis'>2.-> } \\
      { <b dis>4-. <ais cis>-. <b dis>-. } >>
   <g b e g>4-. <fis b dis fis>-. <g b e g>-.
   << { <a a'>2.-> } \\
      { <d! fis>4-. <cis e>-. <d fis>-. } >>
   <ais cis fis ais>-> <gis b d gis>-> <ais cis fis ais>->
   <b e b'>-> <ais cis fis ais>-> <b e b'>->
   <fis a! dis>-> <e a cis>-> <fis a dis>->
   <<
    { <e e'>2. ~
      <e e'>8 b e4. b'8
      a4 c4. <a, dis>8
      b4 b'4. e8
      dis4 fis4. c8
      e4 g s8 <cis, cis'>
      <b b'>4. g'8 e4 ~
      e8 c a4. fis8
      dis2 (e4)
      } \\
    { <c! e>4 <b d!> <a c>
      <g b>8 s r <g b>4.
      r8 <c e> r <dis a'>4 s8
      r8 e, r <b' e>4.
      r8 <fis' c'> r <c dis>4.
      r8 <g' cis> r <e cis>4 s8
      r8 <e g> r <g ais cis>4.
      r8 <e fis> r <a, dis>4.
      r8 <a fis'> r <g b>4.
      }
   >>
}

varVR = \relative g {
    r8
    <<
        {
            <g b> (<fis dis'> <g e'> ais' b)
            b ^\> (a c4. dis,8 ^\!)
            b'\rest b, ^\< (e ais <e b'> e')
            e ^\! ^\> (dis fis4. c8 ^\!)
            fis8 (e g4. cis,8)
            b\rest cis' (b g e ais,)
            r c! (b a! fis dis)
            fis ^\< (c b4. ^\! ^\> e8 ^\! )
        }
        \\
        {
            s8 s4 e8 r
            r e (dis c) r4
            s8 b \change Staff = "down" \stemUp a g s4
            \change Staff = "up"
            r8 \stemNeutral fis' [e \change Staff="down" \stemUp dis]
                \change Staff="up" \stemNeutral fis r
            r g [fis \change Staff = "down" e]
                \change Staff = "up" \stemNeutral g r
            s8 <ais e'> [<b g'> <ais cis>] \stemDown g r
            r <dis a'> [<e g> fis] c r
            s a ~ a4 \change Staff = "down"
              \stemUp g
        }
    >>
}

varVIR = \relative a {
    <a fis'>8 (c b e g b
    <c, a'> e <c es>4.) b'8
    (<c, a'> es d g b d
    <es, c'> g <es fis>4.) d'8
    (<e,! cis'> [g]
        << \new Voice { \stemUp fis4. fis'8} { \stemDown fis,8 [ais cis) fis] } >>
    \stemNeutral
    <g, e'>8 [b]
        << \new Voice { \stemUp a!4. g'8} { \stemDown a,8 [cis e g] } >>

}

themeL = \relative c {
  \clef bass
  \globalA
  <c e a c>2.
  <a c fis a>
  <e b' e>
  <c e c'>
  \repeat tremolo 12 { <fis cis'>32 e' }
  \repeat tremolo 12 { <g, b>32 e' }
  <f, b f'>2.
  <e b' e>
}

varIL = \relative e, {
  \stemDown \repeat tremolo 4 {e32 e'} \stemUp <c, c'>8-! r r4
  \stemDown \repeat tremolo 4 {e32 e'} \stemUp <a,, a'>8-! r r4
  \stemDown \repeat tremolo 4 {e'32 e'} \stemUp <e, e'>8-! r r4
  \stemDown \repeat tremolo 4 {e32 e'} \stemUp <c, c'>8-! r r4
  \stemDown \repeat tremolo 4 {e32 e'} \stemUp <fis,, fis'>8-! r r4
  \stemDown \repeat tremolo 4 {e'32 e'} \stemUp <g,, g'>8-! r r4
  \stemDown \repeat tremolo 4 {b32 b'} \stemUp <f, f'>8-! r r4
  \stemDown \repeat tremolo 4 {e'32 e'} \stemUp <e,, b' e>8-.\arpeggio r r4
}

varIIL = \relative a, {
\set Staff.connectArpeggios = ##t
  \stemNeutral
  r4 <a cis e a>8-.\arpeggio r r4
  r4 <a c! fis a>8-.\arpeggio r r4
  r4 << {
    b'4\arpeggio (cis
    a) fis'\arpeggio (e
    d e\arpeggio fis
    g) b,\arpeggio (<a fis'>
    <g e'> fis b
    <b dis> <cis e> <d fis>)
  } \\
  {
    <e, g>8_.\arpeggio s s4
    s <d a'>8_.\arpeggio s s4
    s4 <cis ais'>8_.\arpeggio s s4
    s4 <b e g>8_.\arpeggio s s4
    s4 b8_. s s4
    r4 e8_. r g4->
  }
  >>
}

varIIIL = \relative c, {
    <c c'>4-. <g' g'>-. <c c'>-.
    <b b'>-. fis'-. b,-.
    <e, e'>-. <b' b'>-. <e e'>-.
    <d d'>-. a'-. d,-.
    <fis,, fis'>-. <b b'>-. <fis' fis'>-.
    <g g'>-. e'-. g-.
    <b,, b'>-. <fis' fis'>-. <b b'>-.
    <e, e'>-. a'-. c-.
}

varIVL = \relative e {
    <e g b>4-. <e,, e'>2
    <fis' fis'>4 <fis, fis'>2
    <g' g'>4 <g, g'>2
    <a' a'>4 <a, a'>2
    <ais' ais'>4 <ais, ais'>2
    <b' b'>4 <b, b'>2
    <b' b'>2 <b, b'>4
    <e, e'>4 <e' e'>2
}

dynamics =
\new Dynamics {
  % theme
  s2. \ff \repeat unfold 7 s
  \break
  % varI
  s \f \noBreak
  s4 \< s \! s \noBreak
  \repeat unfold 3 { s2. \noBreak }
  s _\markup \italic "dim." \noBreak
  s
  s4 s _\markup { \dynamic mp \italic "ma marcato" } s
  \repeat unfold 6 { s2. \noBreak }
  s4 s2 \cresc \noBreak
  s2.
  s2. \f
  \repeat unfold 6 { s2. \noBreak }
  s2. \break
  s2. \f
  \repeat unfold 4 { s2. \noBreak }
  s4 s2 \<
  s2.
  s \!
  s2. -\markup { \italic "poco" \dynamic f }
}

varVL = \relative e {
    \voiceTwo {
    e8^. e, [(b' e] g) r
    fis^. fis, [(a dis] a') d,8\rest
    g^. g, [(b e g b) ]
    a^. a, ([c a'] dis,) d8\rest
    ais'^. ais, ([cis ais'] e) d8\rest
    b'^. b, ([e g] cis) d,8\rest
    \stemUp b,-. \stemDown fis' [(b dis a' fis) ]
    \stemUp e,-. \stemNeutral dis' [(e fis g e)] }
}

\score {
  \new GrandStaff <<
    \new Staff = "up" {
      \themeR
      \varIR
      \varIIIR
      \varVR
      \varVIR
    }
    \dynamics
    \new Staff = "down" \with {
        \consists "Span_arpeggio_engraver"
    } {
      \themeL
      \varIL
      \varIIL
      \varIIIL
      \varIVL
      \varVL
    }
  >>
  \layout { }
  \midi {
    \tempo 4 = 120
  }
}
