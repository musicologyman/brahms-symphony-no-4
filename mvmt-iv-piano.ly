\version "2.24.4"

\header {
  tagline = ##f
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\paper {
  indent = 0\in
  ragged-last = ##t
  #(set-paper-size "letter" )
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
  <<
    {
      \stemDown \slurUp <g, g'> (<a fis' a>
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
  <<
    { <fis fis'>2.-> } \\
    { <b dis>4-. <ais cis>-. <b dis>-. }
  >>
  <g b e g>4-. <fis b dis fis>-. <g b e g>-.
  <<
    { <a a'>2.-> } \\
    { <d! fis>4-. <cis e>-. <d fis>-. }
  >>
  <ais cis fis ais>-> <gis b d gis>-> <ais cis fis ais>->
  <b e b'>-> <ais cis fis ais>-> <b e b'>->
  <fis a! dis>-> <e a cis>-> <fis a dis>->
  <<
    {
      <e e'>2. ~
      <e e'>8 b e4. b'8
      a4 c4. <a, dis>8
      b4 b'4. e8
      dis4 fis4. c8
      e4 g s8 <cis, cis'>
      <b b'>4. g'8 e4 ~
      e8 c a4. fis8
      dis2 (e4)
    } \\
    {
      <c! e>4 <b d!> <a c>
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
  <a fis'>8 _\markup \italic { espress. cresc. } (c b e g b
  <c, a'> e <c es>4.) b'8
  (<c, a'> es d g b d
  <es, c'> g <es fis>4.)
  <<
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
    {
      s8 s4 \stemUp fis4. fis'8
      s4 a,4. g'8
      (fis c!
      \mergeDifferentlyHeadedOff
      b dis fis a)
    }
    \\
    {
      \slurUp
      d,8
      (\stemUp <e,! cis'> [g] \stemDown fis8 [ais cis) fis]
      (<g, e'> b a! [cis e) g]
      a,4
      \once \override NoteColumn.force-hshift = #2.5
      <a b>2
    }
  >>

  <g b g'>8 \f [(e')] <b dis fis b> \f ([dis]) r8. _\markup \italic { più \dynamic f }
}

varVIIR = \relative g'' {
  <<
    {g16
    fis4.. (dis16 e8) b16\rest d! |
    c4.. (a16 b8) b16\rest b'16 |
    a4.. (fis16 g8) b,16\rest fis' |
    e4.. (c16 a8) b16\rest fis' |
    e4.. (cis16 ais8) b16\rest cis' |
    b4.. g16 e4 ~
    e8. c'16 a4.. fis16 |
    <dis, dis'>2 e'4 }
    \\
    {b16
     a8. [<a c>16 _\markup \italic { ben marc. } <g b>8. <fis a>16] <e g>8 s16 fis |
     a8. [<e g>16 <d! fis>8. <cis e>16] <b fis'>8 s16 b' |
     dis8. [<cis e>16 <b dis>8. <a cis>16] <g b>8 s16 d'! |
     c8. [<g b>16 <fis a>8. <e g>16] <dis fis>8 s16 c' |
     cis8. [<g b>16 <fis ais>8. <e gis>16] fis8 s16 cis' \ff |
     b8. [<b e g>16 <a dis fis>8. <g e'>16] e8. <e a c>16 |
     <d! gis b>8. [<c' a'>16] a8. [<a fis'>16 <c e>8. <a dis>16] |
     r8. <a c>16 [<g b>8. <fis a>16] <e g>4 }
     >>

}

varVIIIR = \relative b {
    r16 b e g b <g ais> b <fis a> b <e, g> b' <b, d fis> |
    <e b'> c <es a> c <es c'> a fis d es! c a fis |
    <b d> d [g b] d <bes cis> d <a c> d <g, b> d' <fis, a> |
    <g d'> es <fis c'> es <fis es'> c' a f fis es c a |
    <cis e! g> e (g cis e <g, dis'> e' <g, d'> e' <g, cis!> e' <g, c>
    e' <g, b> e' <g, ais> e' <gis, b> e' <gis, c> e' <g,! b> e' <g, ais!> ) |
    e' (<gis, b> e' <gis, d'> e' <e, a cis> e' <e, a c> e' <e, g b> e' <e, g d>) |
    e' (<e, a d> e' <e, a cis> e' <e, a cis> e' <e, a  c> e' <e, a c> e' <fis, a>)
}

varIXR = \relative e' {
    \tuplet 6/4 {e16 g b e g b} <e, e'> dis' <e, e'> d' <e, e'> c' <e, e'> b'
    <e, e'> a <es es'> a
        \override TupletBracket.stencil = #'()
        \set subdivideBeams = ##t
        \set baseMoment = #(ly:make-moment 1/8)
        \tuplet 3/2 8 { <d, d'>16 c' a d, c a }
        \tupletDown
        \tuplet 3/2 {es'c a} es8-.
        \tupletNeutral

        \set subdivideBeams = ##f
        \tuplet 6/4 { g16 b d g b d } <g, g'> fis' <g, g'> f' <g, g'> e' <g, g'> d'
        <g, g'> c <eis, eis'> c'
        \set subdivideBeams = ##t
        \tupletUp
        \tuplet 3/2 8 { <fis, fis'> dis' c fis, dis c <g g'> e' cis } g8-.
        \set subdivideBeams = ##f
        \tuplet 3/2 { e'16 [g cis] } e \fp (e, <dis' e> e, <d' e> e, <cis' e> e, <c' e> e,
        <b' e> e, <a e'> e <gis e'> e <g e'> e <fis e'> e <f e'> e)
        e (e, <dis' e> e, <d' e> e, <cis' e> e, <c' e> e,
        <b' e> e, <a e'> e <gis e'> e <g e'> e <fis e'> e f8 e)
        \tupletNeutral
        \revert TupletBracket.stencil

}

varXR = \relative fis' {
    R2.
    <fis ais cis e>2.->
    (<g b d>4) r r
    <<
        \voiceTwo { \slurUp <a cis e g>2.->
            (<ais e' fis>4) f\rest f\rest }
        \\
        \voiceOne { s2. cis'2.-> }
    >>
    <b e g b>2.->
    <<
        { dis,2.->  (e4) a4\rest a4\rest }
        \\
        { s2. <a, c> }
    >>
}

varXIR = \relative b {
    \override TupletBracket.stencil = #'()
    \slurDown
    \tuplet 3/2 4 { \tupletDown <b d gis>8-. ^\markup \italic { \dynamic p molto dolce }
        (<d g b d>-. <d g b d>-.)
        \tupletUp
        r \slurUp <g b d>-. (<g b cis>-. <g b d>-. <g b e>-. <g b d>-.) }
        r8 <<
            { e' ~ e2 }
            \\
            { <ais, cis>8-. (r <gis b>-. r <fis ais>-.) }
        >>
    \tuplet 3/2 { <d! f! b>8-. (<f b d f!>-. <f b d f>-.) }
    \tuplet 3/2 { r8 <b d f>-. (<b d e>-. }
    \tuplet 3/2 { <b d f>-. <b d g>-. <b d f>-.) }
    r8 <<
        { g'2 
            \once \override Stem.transparent = ##t 
            \once \override Slur.positions = #'(4.5 . 3.5) 
            \once \override Script.Y-offset = #3.75
              g8-. 
          (b,8\rest \stemDown <g d' fis>-. b\rest <g cis e>-.) b\rest <c g' e'>-. }
        \\
        { <cis e>8-. (r <b d>-. r <a c e g>-.) 
        s2.}
    >>
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
  r4 <<
    {
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
  %\break
  % varI
  s \f
  s4 \< s \! s
  \repeat unfold 3 { s2.  }
  s _\markup \italic "dim."
  s
  %\break
  s4 s _\markup { \dynamic mp \italic "ma marcato" } s
  \repeat unfold 6 { s2.  }
  s4 s2 \cresc
  s2.
  %variation III
  %\break
  s2. \f
  \repeat unfold 6 { s2.  }
  s2.
  %\break
  s2. \f
  \repeat unfold 4 { s2. }
  s4 s2 \<
  s2.
  s \!
  %\break
  s2. -\markup { \italic "poco" \dynamic f }
  s2. * 6
  s2.
  %\break
  s2. * 7
  s2
  %\bar "" \break

  %variation VII
  s4
  \repeat unfold 7 { s2. }
  s2.
  %\break

  % variation VIII
  \repeat unfold 2 {
      s8 \f s8 \< s4 s8 \! s8
      s4 s \sf s \sf }
  s4 \f s16 \fp s16 -\markup \italic { dim. sempre } s8 s4
  s2. * 2
  s4 \pp s2 \>
  %\break

  % variation IX
  s2. \f
  s2. * 3
  s2. \f
  s2.
  s2. \>
  s2.
  %\break

  % variation X
  s2. \p
  s2.
  s2. -\markup \italic { poco cresc. }
  s2. * 2
  s2. 
  \once \override DynamicText.Y-offset = #-3.0
  s2. \pp
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
    \stemUp e,-. \stemNeutral dis' [(e fis g e)]
  }
}

varVIL = \relative e, {
  \slurUp
  \tuplet 3/2 4 { \stemDown e8 (dis' a' g e b } \stemNeutral e,4)
  \tuplet 3/2 4 { \stemDown fis8 (c' b' a es c } \stemNeutral fis,4)
  \tuplet 3/2 4 { \stemDown g8 (fis' c' b g d } \stemNeutral g,4)
  \tuplet 3/2 4 { \stemDown a8 (es' d' c a e } \stemNeutral a,4)
  \tuplet 3/2 4 { \stemDown ais8 (e'! d' cis ais fis e cis ais) }
  \shape #'((0 . 0) (0 . 1) (-1 . 0) (0 . 0)) Slur
  \tuplet 3/2 4 { b (g' fis' e cis a! g e cis) }
  \set Staff.connectArpeggios = ##t
  <<
    {

      \once \override TupletNumber.Y-offset = #4
      \shape #'((0 . 0) (0 . 1) (0 . 2) (0 . 0)) Slur
      \tuplet 3/2 4 { \stemDown d8 (a' g' \stemUp fis\arpeggio dis b a fis dis) } }
    \\
    { s4 dis4\arpeggio b }
  >>
  <e, e'>8 [(g)] <b, b'> ([<fis'' b>]) d8.\rest
}

varVIIL = \relative e {
  \stemNeutral
  \oneVoice
  e16
  \once \override Dots.Y-offset = #1
  c'8.  <e,,, e'>16 [<g g'>8. <c c'>16] d'8.\rest a'16 |
  fis'8. <fis,,, fis'>16 [<a a'>8. <dis dis'>16] d'8.\rest g16 |
  fis'8. <g,,, g'>16 [<b b'>8. <e e'>16] r8. g'16 |
  a8. <a,, a'>16 [<c c'>8. <fis fis'>16] r8. a'16 |
  ais8. <ais,, ais'>16 [<cis cis'>8. <fis fis'>16] r4 |
  r8. <b, b'>16 <e e'>4 r8. <e e'>16 |
  <a a'>4 r8. <fis, fis'>16 <b b'>4 |
  r8. <b b'>16 <e e'>4 r8. <b b'>16 |
}

varVIIIL = \relative e,, {
    <e e'>8
    <<
        { b''8 (cis dis e g) }
        \\
        { e,8 ~ e2 }
    >>
    \slurUp
    <fis, fis'>4 (\stemDown <a' fis'>8-.) r <fis' a>-. r
    \stemNeutral
    \slurNeutral
    <g,, g'>8
    <<
        { d''8 (e fis g b) }
        \\
        { g, ~ g2 }
    >>
    <a, a'>4 (<a' c fis a>8-.)  r <a' c>8-. r
    <ais,, ais'>2.
    <b b'>
    <e, e'>
    <a a'>2 <a' e' fis>4
}

varIXL = \relative e {
    \tuplet 6/4 { <e e'>16 b' g e b g } <e e'> fis <e e'> gis <e e'> a <e e'> b'
    <fis, c' fis>4
        \override TupletBracket.stencil = #'()
        \set subdivideBeams = ##t
        \set baseMoment = #(ly:make-moment 1/8)
        \tuplet 3/2 { fis'16 a d } fis8-.
        \set subdivideBeams = ##f
        \tuplet 3/2 8 {fis16 a c fis c a }
    \tuplet 6/4 { <g g'>16 d' b g d b }
        <g g'> a <g g'> b <g g'> c <g g'> d'
        <a, dis a'>4
            \tupletUp
            \set subdivideBeams = ##t
            \tuplet 3/2 { a'16 c dis } a'8-.
            \tuplet 3/2 8 { a16 cis e a e cis }
    \tupletNeutral
    \set subdivideBeams = ##f
    <<
        \voiceOne { r8 e (dis d _\markup \italic "dim." cis c
          <gis b> a gis g fis f) }
        \\
        \voiceTwo { s8 <e g ais> ~ <e g ais>2
            s2. }
        \\
        \voiceFour { {<ais,, ais'>2.}
            <b' e> }
    >>
    <e, gis d' e>2.
    <<
        {cis'2 (c8) }
        \\
        \new Voice <<
          \stemDown
          \slurDown
          { e2 e8 }
          { a,2 (a8) }
        >>

    >>
    r8
}

varXL = \relative e {
    <e gis b d>2.->
    (<fis ais cis>4) r r
    <g! b d f>2.->
    (<a cis e>4) r r
    \slurDown
    <fis ais cis e>2.->
    (<g b e>4) r r
    <<
        { s2. <a, c>2. }
        \\
        { <b fis' a>2. (e,4) s s}
    >>
}

\score {
  \new GrandStaff <<
    \new Staff = "up" {
      \themeR
      \varIR
      \varIIIR
      \varVR
      \varVIR
      \varVIIR
      \varVIIIR
      \varIXR
      \varXR
      \varXIR
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
      \varVIL
      \varVIIL
      \varVIIIL
      \varIXL
      \varXL
    }
  >>
  \layout { }
  \midi {
    \tempo 4 = 120
  }
}
