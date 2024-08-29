\version "2.24.0"

#(define (x-tab-format str context event)
    (make-whiteout-markup
      (make-vcenter-markup
        (markup #:musicglyph "noteheads.s2cross"))))

xHeadOn = {
  \override NoteHead.style = #'cross
   \set tablatureFormat = #x-tab-format
}
xHeadOff = {
  \revert NoteHead.style
  \unset tablatureFormat
}

\header {
  title = "Polychrome"
  subtitle = "Bass"
  composer = "Vincen García"
  author = \markup \fromproperty #'header:composer
  subject = \markup \concat {
    "Bass partition for “"
    \fromproperty #'header:title
    "” by "
    \fromproperty #'header:composer
  }
  keywords = #(string-join '(
    "music"
    "partition"
    "bass"
  ) ", ")
  tagline = ##f
}

#(set-global-staff-size 23)

\paper {
  indent = 0\mm
}

song = {
  \numericTimeSignature
  \tempo 4 = 132
  \time 4/4
  \key cis \minor
  \relative c, {

    \partial 16 \xHeadOn a16\3 \xHeadOff \bar "||"
    cis8\3 r16 \xHeadOn a\3 r a\3 r a\3 \xHeadOff e''16 (fis) b,\2 e cis4\2
    r16 b (cis) fis, b gis\2 r \xHeadOn d\2 r d\2 r d\2 \xHeadOff e (fis) b, e
    cis8. b16 r4 r4 r16 \xHeadOn a\3 \xHeadOff gis\4 a\4
    bes8\4 bes'16\2 bes,\4~ bes bes'\2~ bes bes,\4~ bes as f8\5 dis\5 cis\5

    r8. gis''16\3 cis\2 cis\2 r gis\3 cis\2 cis\2 r cis\2 \autoBeamOff r gis\3 cis\2 r \autoBeamOn
    r8. gis16\3 cis\2 cis\2 r cis\2 \autoBeamOff r gis\3 cis\2 r r4 \autoBeamOn
    r16 gis16\3 cis\2 gis\3 (\glissando b\3) e\2 b\3 fis'\2 (\glissando g\2) (\glissando fis\2) e\2 cis\3 b\3 e\2 r8
    r16 f\2 bes\1 c\1 dis,\2 gis\1 f\2 bes,\3 dis\2 bes\3 gis8\3 \trill r4

    fis'16\1 (g\1 gis\1)~gis\1~gis\1 gis\1 (g\1 fis\1) e8\2 fis\1 (\glissando gis\1) b16\1 (gis\1~) \trill
    gis4\1 r r16 gis\1 e\1 dis\2 e\1 cis\2 dis\2 e\1
    dis\2 fis\1 e\1 dis\2 e\1 fis\1 gis\1 b,\2 e\1 cis\2 fis,\3 b\2 gis\3 g\3 fis\3 cis'\2
    f,4\3 \trill r16 f16\3 cis\4 c\4 bes4\4 \trill r

    r4 r16 a'\2 gis\2 a\2 b\2 cis\1 dis\1 e\1 \appoggiatura cis32\1 dis4\1
    r16 dis32\1 (\glissando cis\1) b16\1 a\2 gis\2 fis\2 e\3 dis\3 cis\3 dis\3 e\3 fis\2 \appoggiatura cis32 dis4\3
    \autoBeamOff r16 \xHeadOn a\3 \xHeadOff b \autoBeamOn r cis r \xHeadOn g'\1 \xHeadOff b r cis r \xHeadOn d,16 \xHeadOff b r cis r
    \autoBeamOff r16 \xHeadOn a\3 \xHeadOff b'\3 \autoBeamOn r cis\3 r \xHeadOn g\1 \xHeadOff b'16\1 r cis\1 r \xHeadOn d,,16\2 \xHeadOff b'\3 r cis\3 r

    r16 \xHeadOn a,\3 \xHeadOff b (cis) r cis, r8 r16 cis r8 r8 r16 cis
    r16 \xHeadOn b\5 \xHeadOff cis16 cis r4 r16 cis r8 r8 cis16 r
    r8. cis16 \autoBeamOff r \xHeadOn b\5 \xHeadOff \autoBeamOn cis cis r4 r16 \xHeadOn a'\3 \xHeadOff gis\4 a\4
    bes8\4 bes'16\2 bes,\4~ bes bes'\2~ bes bes,\4~ bes \xHeadOn e,\4 \xHeadOff gis\4 (bes\4) cis\3 (dis\3) gis,\4 (bes\4)

    r16 \xHeadOn a\3 \xHeadOff b (cis) r cis, r8 r16 cis r8 r8 r16 cis
    r16 \xHeadOn b\5 \xHeadOff cis16 cis r4 r16 cis r8 r8 cis16 r
    r8. cis16 \autoBeamOff r \xHeadOn b\5 \xHeadOff \autoBeamOn cis cis r4 r16 \xHeadOn d'\2 \xHeadOff b (cis\3)
    bes8\3 bes'16\1 \xHeadOn d,\2 a\3 \xHeadOff c\3 c'\1 \xHeadOn d,\2 a\3 \xHeadOff cis\3 cis'\1 \xHeadOn d,\2 a\3 \xHeadOff dis\3 r \xHeadOn a \xHeadOff

    e'8\3 r16 \xHeadOn g\1 \xHeadOff d'16\1 (e\1) b8\2 r16 \xHeadOn d,\2 \xHeadOff g\2 (a\2) e8\3 r16 \xHeadOn a,\3 \xHeadOff
    d\3 (e\3) b8\4 r16 \xHeadOn d\2 a\3 e\4 \xHeadOff fis\4 (\glissando g\4) g'\2 \xHeadOn a,\3 e\4 \xHeadOff a\4 (b\4) d\3
    g\2 e\3 \xHeadOn e,\4 e\4 \xHeadOff a16\4 \xHeadOn e\4 e\4 \xHeadOff g\4 r a8\4 \xHeadOn e16\4 \xHeadOff g\4 r a8\4
    r16 \xHeadOn b,\5 \xHeadOff cis\5 r dis\5 r \xHeadOn b\5 \xHeadOff e\5 r dis\5 r \xHeadOn b\5 \xHeadOff \afterGrace cis4 \glissando {\hideNotes fis\5} \unHideNotes

    r8 d''16\1 (e\1) b8\2 r16 \xHeadOn d,\2 \xHeadOff g\2 (a\2) e8\3 r16 \xHeadOn a,\3 \xHeadOff d\3 (e\3)
    b8\4 r16 \xHeadOn e,\4 \xHeadOff a\4 (b\4) g8\4~ g\4 g\4 a8.\4 g16\4
    b8.\4 a16\4 d8.\3 b16\4 e\3 a\2 d,\3 g\2 e\3 a,\4 d\3 r
    r16 \xHeadOn a\3 \xHeadOff e'8\3 dis\3 cis16\3 gis\4 e\5 dis\5 cis8\5~ \afterGrace cis4\5 \glissando {\hideNotes a'\5} \unHideNotes

    g8\4 fis\4 f\4 \xHeadOn e16\4 e\4 \xHeadOff r f'\2 (g\2) d\3 f \xHeadOn a,\3 a\3 a\3 \xHeadOff
    g8\4 fis\4 \autoBeamOff f\4 \autoBeamOn r16 \xHeadOn e\4 r e\4 r e\4 \xHeadOff bes'\3 (c\3) r \xHeadOn e,\4 \xHeadOff
    g8\4 fis\4 f\4 \xHeadOn e16\4 e\4 \xHeadOff r f'\2 (g\2) c,\3 f\2 \afterGrace d8.\3 \glissando {\hideNotes a'\3} \unHideNotes
    r16 \xHeadOn d,\2 \xHeadOff c'\2 (d\2) c\2 (bes\2) g\3 (f\3) bes\2 bes\2 g8\3 r16 \xHeadOn d\2 a\3 e\4 \xHeadOff

    g8\4 fis\4 f16\4 \xHeadOn a\3 e\4 e\4 \xHeadOff r f'\2 (g\2) d\3 f \xHeadOn a,\3 a\3 a\3 \xHeadOff
    g8\4 fis\4 \autoBeamOff f\4 \autoBeamOn r16 \xHeadOn e\4 r e\4 r e\4 \xHeadOff bes'\3 (c\3) r \xHeadOn g'\1 \xHeadOff
    \xHeadOn g\1 d\2 \xHeadOff bes\3 (c\3) \xHeadOn g'\1 g\1 d\2 \xHeadOff c\3 (d\3) \xHeadOn g\1 g\1 d\2 \xHeadOff bes\3 (c\3) \xHeadOn g'\1 g\1
    d\2 \xHeadOff c\3 (d\3) \xHeadOn g\1 g\1 d\2 \xHeadOff bes\3 (c\3) \xHeadOn g'\1 g\1 d\2 \xHeadOff c\3 (d\3) f\2 d\3 r

    b8\4 a'16\2 b,\4 b'\2 b,\4 b\4 b\4 a'\2 b,\4 b'\2 b,\4 b\4 b\4 a'\2 b,\4
    b'\2 b,\4 b\4 b\4 a'\2 b,\4 b'\2 b,\4 b\4 b\4 a'\2 b,\4 b'\2 b,\4~ \afterGrace b8\4 \glissando {\hideNotes b'\4} \unHideNotes
    b,,8\5 a'\4 b\4 e,\5 d\5 a'\4 e'\3 d16\3 e\3
    f8\3 c\4 f,4\5 \tuplet 3/2 { gis8\5 dis'\4 ais'\3 } \tuplet 3/2 { gis\3 dis'\2 ais'\1 \accent } \bar "|."

  }
}

staff = #(define-music-function (scoreOnly tabOnly) (boolean? boolean?) #{
  \new StaffGroup
  <<
      #(if (not tabOnly) #{
        \new Staff {
          \clef "bass_8"
          \song
        }
      #})
      #(if (not scoreOnly) #{
        \new TabStaff \with {
          stringTunings = #bass-five-string-tuning
          minimumFret = #0
          restrainOpenStrings = ##t
        } {
          \clef "moderntab"
          #(if tabOnly #{
            \tabFullNotation
          #})
          \song
        }
      #})
  >>
#})

\book {
  \score {
    \staff ##f ##f
    \layout {
      \omit Voice.StringNumber
    }
  }
}

\book {
  \bookOutputSuffix "score-only"

  \header {
    pdftitle = \markup \concat { \fromproperty #'header:title " (Score)" }
  }

  \paper {
    markup-system-spacing.padding = #5
    system-system-spacing.padding = #8
  }

  \score {
    \staff ##t ##f
    \layout {
      \omit Voice.StringNumber
    }
  }
}

\book {
  \bookOutputSuffix "tab-only"

  \header {
    pdftitle = \markup \concat { \fromproperty #'header:title " (Tablature)" }
  }

  \paper {
    markup-system-spacing.padding = #12
    system-system-spacing.padding = #8
  }

  \score {
    \staff ##f ##t
    \layout {
      \omit Voice.StringNumber
    }
  }
}
