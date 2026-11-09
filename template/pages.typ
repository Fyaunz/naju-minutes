#import "theme.typ": colors, fonts
#import "assets.typ": icons, logo
#import "components.typ": format-date

#let join-names(names) = {
  let list = if type(names) == array { names } else { (names,) }
  list.filter(name => name != "").join(", ")
}

#let cover-page(
  title: none,
  date: none,
  location: none,
  protocol-keeper: none,
  moderator: none,
  present: (),
  absent: (),
) = page(header: none, footer: none)[
  #block(
    width: 100%,
    stroke: (
      top: 4pt + colors.accent,
      bottom: 4pt + colors.accent,
    ),
    inset: (y: 2em),
  )[
    #grid(
      columns: (25%, 75%),
      gutter: 1.5em,
      align: (center + horizon, left + horizon),
      logo(9em), text(font: fonts.header, weight: "bold", size: 4em, fill: colors.text, title),
    )
  ]
  #v(6em)
  #text(size: 1.3em)[
    #align(left + top, grid(
      columns: (1fr, 1fr),
      gutter: 1em,
      [#icons.date *Datum:*], format-date(date),
      [#icons.location *Ort:*], location,
      [#icons.moderator *Moderation:*], moderator,
      [#icons.writer *Protokoll:*], protocol-keeper,
      [#icons.attending *Anwesend:*], join-names(present),
      [#icons.absent *Abwesend:*], join-names(absent),
    ))
  ]
]

#let toc-entry(it) = {
  let number = context if it.element.numbering != none {
    numbering(it.element.numbering, ..counter(heading).at(it.element.location()))
    h(0.5em)
  }
  let dots = repeat[ #h(0.4em) #text(fill: colors.line.darken(20%), size: 0.6em)[.] #h(0.4em) ]

  v(0.8em)
  link(it.element.location(), box(width: 100%)[
    #text(font: fonts.header, size: 1.9em, fill: colors.muted)[
      #number #it.element.body
    ]
    #box(width: 1fr, dots)
    #text(font: fonts.header, size: 1.3em, weight: "black", fill: colors.muted, context it.element.location().page())
  ])
}

#let toc-page() = page(header: none, footer: none)[
  #v(2cm)
  #align(center)[
    #text(font: fonts.header, weight: "bold", size: 2em, tracking: 3pt, fill: colors.accent, upper("Tagesordnung"))
    #line(length: 6.5cm, stroke: 0.7pt + colors.muted)
  ]
  #v(1.5cm)

  #show outline.entry: toc-entry
  #outline(title: none, indent: 0pt, depth: 1)
]
