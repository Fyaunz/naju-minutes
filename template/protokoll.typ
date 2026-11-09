#import "theme.typ": colors, fonts
#import "assets.typ": logo
#import "pages.typ": cover-page, toc-page

#let page-header(title, author) = {
  set text(font: fonts.header, size: 9pt, fill: colors.muted)
  grid(
    columns: (1fr, auto, 1fr),
    align(left, title), align(center, logo(0.6em)), align(right, author),
  )
  v(-0.6em)
  line(length: 100%, stroke: 0.5pt + colors.line)
}

#let page-footer() = {
  line(length: 100%, stroke: 0.5pt + colors.line)
  v(-0.8em)
  set text(font: fonts.header, size: 9pt, fill: colors.muted)
  align(center, context [--  #counter(page).display()  --])
}

#let heading-style(body) = {
  set heading(numbering: "TOP 1.1:")
  show heading: set align(left)

  show heading.where(level: 1): it => {
    // Start a new page if the heading would land in the lower half of this one:
    // an invisible block claims half the page, and only fits in the upper half.
    block(height: 50%, breakable: false, above: 1.5em, below: 0pt)
    v(-50%)

    let number = if it.numbering != none { counter(heading).display(it.numbering) }
    block(width: 100%, sticky: true, above: 0pt)[
      #text(font: fonts.header, weight: "black", size: 2em, fill: colors.text)[
        #number #it.body
      ]
      #line(length: 75%, stroke: 1pt + colors.accent)
      #v(0.5em)
    ]
  }

  show heading.where(level: 2): it => block(
    sticky: true,
    above: 1.8em,
    below: 2.3em,
    text(font: fonts.header, weight: "bold", size: 1.5em, fill: colors.text, it.body),
  )

  show heading.where(level: 3): it => block(
    sticky: true,
    above: 1.56em,
    below: 1.36em,
    text(font: fonts.header, weight: "bold", size: 1.3em, fill: colors.muted, it.body),
  )

  body
}

#let protokoll(
  title: "Your Title",
  author: "AK Rodeln",
  date: datetime.today(),
  location: "Your Location",
  protocol-keeper: "Your Name",
  moderator: "Your Moderator",
  present: (),
  absent: (),
  body,
) = {
  set document(title: title, author: author)
  set page(
    paper: "a4",
    margin: (x: 1.5cm, top: 2.5cm, bottom: 2.5cm),
    header: page-header(title, author),
    footer: page-footer(),
  )
  set text(
    font: fonts.body,
    size: 11pt,
    fill: colors.text,
    lang: "de",
    features: (onum: 1),
  )
  show: heading-style

  if title != none {
    cover-page(
      title: title,
      date: date,
      location: location,
      protocol-keeper: protocol-keeper,
      moderator: moderator,
      present: present,
      absent: absent,
    )
  }
  toc-page()

  body
}
