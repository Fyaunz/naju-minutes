// Styling

#let colors = (
  text: rgb("#333333"),
  muted: rgb("#757575"),
  accent: rgb("#0069b4"), // LBV-Blau
  accent_orange: rgb("#EF7D00"),
  bg-boxes: rgb("#F9F9F9"), // light gray
  line: rgb("#EEEEEE"),
)

#let fonts = (
  body: "Open Sans",
  header: "Philosopher",
)

// --- Components ---

#let icons = (
  date: box(height: 0.8em, baseline: 0.1em, image(
    bytes(
      "<svg xmlns='http://www.w3.org/2000/svg' height='24px' viewBox='0 -960 960 960' width='24px' fill='#1f1f1f'><path d='M200-80q-33 0-56.5-23.5T120-160v-560q0-33 23.5-56.5T200-800h40v-80h80v80h320v-80h80v80h40q33 0 56.5 23.5T840-720v560q0 33-23.5 56.5T760-80H200Zm0-80h560v-400H200v400Zm0-480h560v-80H200v80Zm0 0v-80 80Zm280 240q-17 0-28.5-11.5T440-440q0-17 11.5-28.5T480-480q17 0 28.5 11.5T520-440q0 17-11.5 28.5T480-400Zm-160 0q-17 0-28.5-11.5T280-440q0-17 11.5-28.5T320-480q17 0 28.5 11.5T360-440q0 17-11.5 28.5T320-400Zm320 0q-17 0-28.5-11.5T600-440q0-17 11.5-28.5T640-480q17 0 28.5 11.5T680-440q0 17-11.5 28.5T640-400ZM480-240q-17 0-28.5-11.5T440-280q0-17 11.5-28.5T480-320q17 0 28.5 11.5T520-280q0 17-11.5 28.5T480-240Zm-160 0q-17 0-28.5-11.5T280-280q0-17 11.5-28.5T320-320q17 0 28.5 11.5T360-280q0 17-11.5 28.5T320-240Zm320 0q-17 0-28.5-11.5T600-280q0-17 11.5-28.5T640-320q17 0 28.5 11.5T680-280q0 17-11.5 28.5T640-240Z'/></svg>",
    ),
    format: "svg",
  )),
  antending: box(height: 0.8em, baseline: 0.1em, image(
    bytes(
      "<svg xmlns='http://www.w3.org/2000/svg' height='24px' viewBox='0 -960 960 960' width='24px' fill='#1f1f1f'><path d='M40-160v-112q0-34 17.5-62.5T104-378q62-31 126-46.5T360-440q66 0 130 15.5T616-378q29 15 46.5 43.5T680-272v112H40Zm720 0v-120q0-44-24.5-84.5T666-434q51 6 96 20.5t84 35.5q36 20 55 44.5t19 53.5v120H760ZM360-480q-66 0-113-47t-47-113q0-66 47-113t113-47q66 0 113 47t47 113q0 66-47 113t-113 47Zm400-160q0 66-47 113t-113 47q-11 0-28-2.5t-28-5.5q27-32 41.5-71t14.5-81q0-42-14.5-81T544-792q14-5 28-6.5t28-1.5q66 0 113 47t47 113ZM120-240h480v-32q0-11-5.5-20T580-306q-54-27-109-40.5T360-360q-56 0-111 13.5T140-306q-9 5-14.5 14t-5.5 20v32Zm240-320q33 0 56.5-23.5T440-640q0-33-23.5-56.5T360-720q-33 0-56.5 23.5T280-640q0 33 23.5 56.5T360-560Zm0 320Zm0-400Z'/></svg>",
    ),
    format: "svg",
  )),
  absent: box(height: 0.8em, baseline: 0.1em, image(
    bytes(
      "<svg xmlns='http://www.w3.org/2000/svg' height='24px' viewBox='0 -960 960 960' width='24px' fill='#1f1f1f'><path d='M480-80q-83 0-156-31.5T197-197q-54-54-85.5-127T80-480q0-83 31.5-156T197-763q54-54 127-85.5T480-880q83 0 156 31.5T763-763q54 54 85.5 127T880-480q0 83-31.5 156T763-197q-54 54-127 85.5T480-80Zm0-80q54 0 104-17.5t92-50.5L228-676q-33 42-50.5 92T160-480q0 134 93 227t227 93Zm252-124q33-42 50.5-92T800-480q0-134-93-227t-227-93q-54 0-104 17.5T284-732l448 448ZM480-480Z'/></svg>",
    ),
    format: "svg",
  )),
  writer: box(height: 0.8em, baseline: 0.1em, image(
    bytes(
      "<svg xmlns='http://www.w3.org/2000/svg' height='24px' viewBox='0 -960 960 960' width='24px' fill='#1f1f1f'><path d='M200-200h57l391-391-57-57-391 391v57Zm-80 80v-170l528-527q12-11 26.5-17t30.5-6q16 0 31 6t26 18l55 56q12 11 17.5 26t5.5 30q0 16-5.5 30.5T817-647L290-120H120Zm640-584-56-56 56 56Zm-141 85-28-29 57 57-29-28Z'/></svg>",
    ),
    format: "svg",
  )),
  moderator: box(height: 0.8em, baseline: 0.1em, image(
    bytes(
      "<svg xmlns='http://www.w3.org/2000/svg' height='24px' viewBox='0 -960 960 960' width='24px' fill='#1f1f1f'><path d='M480-400q-50 0-85-35t-35-85v-240q0-50 35-85t85-35q50 0 85 35t35 85v240q0 50-35 85t-85 35Zm0-240Zm-40 520v-123q-104-14-172-93t-68-184h80q0 83 58.5 141.5T480-320q83 0 141.5-58.5T680-520h80q0 105-68 184t-172 93v123h-80Zm40-360q17 0 28.5-11.5T520-520v-240q0-17-11.5-28.5T480-800q-17 0-28.5 11.5T440-760v240q0 17 11.5 28.5T480-480Z'/></svg>",
    ),
    format: "svg",
  )),
  location: box(height: 0.8em, baseline: 0.1em, image(
    bytes(
      "<svg xmlns='http://www.w3.org/2000/svg' height='24px' viewBox='0 -960 960 960' width='24px' fill='#1f1f1f'><path d='M480-480q33 0 56.5-23.5T560-560q0-33-23.5-56.5T480-640q-33 0-56.5 23.5T400-560q0 33 23.5 56.5T480-480Zm0 294q122-112 181-203.5T720-552q0-109-69.5-178.5T480-800q-101 0-170.5 69.5T240-552q0 71 59 162.5T480-186Zm0 106Q319-217 239.5-334.5T160-552q0-150 96.5-239T480-880q127 0 223.5 89T800-552q0 100-79.5 217.5T480-80Zm0-480Z'/></svg>",
    ),
    format: "svg",
  )),
)

#let checkbox = {
  box(
    height: 0.8em,
    width: 0.8em,
    stroke: 1pt + colors.muted.lighten(40%),
    radius: 2pt,
    baseline: 20%,
  )
}

// -- Helper Functions --

#let vote(
  caption,
  yes,
  no,
  abstention,
) = {
  figure(
    table(
      stroke: colors.accent,
      columns: 3,
      inset: 1em,
      table.header([Ja], [Nein], [Enthaltung]),
      [#yes], [#no], [#abstention],
    ),
    caption: caption,
    kind: "vote",
    supplement: "Abstimmung",
  )
}

#let vote_page() = {
  pagebreak()
  outline(
    title: [Abstimmungen],
    target: figure.where(kind: "vote"),
  )
}

#let todo(
  due: datetime.today(),
  assignee: "Fabian Adam",
  todo-text: "Do This!",
) = {
  let spacer-line = gradient.linear(
    (white.transparentize(100%), 0%),
    (white.transparentize(100%), 1%), // Top Gap
    (colors.muted, 1%),
    (colors.muted, 99%), // Visible Line
    (white.transparentize(100%), 99%),
    (white.transparentize(100%), 100%), // Bottom Gap
    angle: 90deg,
  )
  align(center, block(
    width: 90%,
    stroke: colors.accent + 2pt,
    inset: 1.2em,
    radius: 4pt,
    breakable: true,
    below: 1.5em,
    above: 1.5em,
    grid(
      columns: (1fr, 1fr, 3fr),
      inset: (x: 1em),
      stroke: none,

      grid.vline(x: 1, stroke: (paint: spacer-line, thickness: 1pt)),
      grid.vline(x: 2, stroke: (paint: spacer-line, thickness: 1pt)),

      align(left + horizon, due.display()),
      align(left + horizon, assignee),
      align(left + horizon, todo-text),
    ),
  ))
  [#metadata((
    due: due,
    assignee: assignee,
    text: todo-text,
  )) <todo-item>]
}

#let todo_list() = context {
  let todos = query(<todo-item>)
  table(
    columns: (1fr, 1fr, 3fr),
    stroke: none,
    align: left,
    //(x, y) => if y == 0 { center } else { left },
    table.header([*Datum*], [*Zugewiesen*], [*Aufgabe*]),
    table.hline(),
    ..todos
      .map(item => (
        item.value.due.display(),
        item.value.assignee,
        item.value.text,
      ))
      .flatten(),
  )
}

#let date(y, m, d) = datetime(year: y, month: m, day: d).display("[day].[month].[year]")

// Main

#let protokoll(
  title: "Your Titel",
  author: "AK Rodeln",
  date: datetime.today(),
  location: "Your Location",
  protocol_keeper: "Your Name",
  moderator: "Your Moderator",
  present: (),
  absent: (),
  body,
) = {
  set document(title: title, author: author)
  set page(
    paper: "a4",
    margin: (x: 1.5cm, top: 2.5cm, bottom: 2.5cm),
    header: context {
      let p = counter(page).get().first()
      if p > 1 {
        set text(font: fonts.header, size: 9pt, fill: colors.muted)
        grid(
          columns: (1fr, auto, 1fr),
          align(left, title),
          align(center, [#figure(
            image("resources/Logo.png", height: 0.6em),
          )]),
          align(right, author),
        )
        v(-0.6em)
        line(length: 100%, stroke: 0.5pt + colors.line)
      }
    },

    footer: context {
      let p = counter(page).get().first()
      if p > 1 {
        line(length: 100%, stroke: 0.5pt + colors.line)
        v(-0.8em)
        set text(font: fonts.header, size: 9pt, fill: colors.muted)
        align(center, [--  #p  --])
      }
    },
  )
  set text(
    font: fonts.body,
    size: 11pt,
    fill: colors.text,
    lang: "de",
    features: (onum: 1),
  )

  // Headings

  set heading(numbering: (..nums) => {
    "TOP " + nums.pos().map(str).join(".") + ":"
  })

  show heading.where(level: 1): it => {
    set align(left)
    let number = if it.numbering != none {
      counter(heading).display(it.numbering)
    }
    block(width: 100%)[
      #text(font: fonts.header, weight: "black", size: 2em, fill: colors.text)[
        #number #it.body
      ]
      #line(length: 75%, stroke: 1pt + colors.accent)
      #v(0.5em)
    ]
  }

  show heading.where(level: 2): it => {
    set align(left)
    text(font: fonts.header, weight: "bold", size: 1.5em, fill: colors.text, it.body)
    v(0.5em)
  }

  show heading.where(level: 3): it => {
    set align(left)
    text(font: fonts.header, weight: "bold", size: 1.3em, fill: colors.muted, it.body)
    v(-0.2em)
  }

  // Cover

  if title != none {
    page(header: none, footer: none)[
      #place(center + horizon)[
        #v(-5.0em)
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
            align(left + horizon)[
              #figure(
                image("resources/Logo.png", height: 9em),
              )
            ],
            align(left + horizon, [#text(font: fonts.header, weight: "bold", size: 4em, fill: colors.text, title)]),
          )
        ]
        #v(6em)
        #text(size: 1.3em)[
          #align(left + top, grid(
            columns: (1fr, 1fr),
            gutter: 1em,
            [#icons.date *Datum:*], [#date],
            [#icons.location *Ort:*], [#location],
            [#icons.moderator *Moderation:*], [#moderator],
            [#icons.writer *Protokol:*], [#protocol_keeper],
            [#icons.antending *Anwesend:*], [#present.join(", ")],
            [#icons.absent *Abwesend:*], [#absent.join(", ")],
          ))
        ]
      ]
    ]
  }

  // TOC
  page(header: none, footer: none)[
    #v(2cm)
    #align(center)[
      #text(font: fonts.header, weight: "bold", size: 2em, tracking: 3pt, fill: colors.accent, upper("Tagesordnung"))
      #line(length: 6.5cm, stroke: 0.7pt + colors.muted)
    ]
    #v(1.5cm)

    #show outline.entry: it => {
      if it.level == 1 {
        let number = context {
          if it.element.numbering != none {
            let count = counter(heading).at(it.element.location())
            numbering(it.element.numbering, ..count)
            h(0.5em)
          }
        }
        v(0.8em)
        box(width: 100%)[
          #text(font: fonts.header, size: 1.9em, fill: colors.muted)[
            #number #it.element.body
          ]
          #box(width: 1fr, repeat[ #h(0.4em) #text(fill: colors.line.darken(20%), size: 0.6em)[.] #h(0.4em) ])
          #text(font: fonts.header, size: 1.3em, weight: "black", fill: colors.muted, context it
            .element
            .location()
            .page())
        ]
      }
    }

    #outline(title: none, indent: 0pt, depth: 2)
  ]

  body
}

#show: protokoll.with(
  title: "Test Titel",
  author: "Fyaunz",
  date: date(2026, 1, 9),
  location: "Bamberg",
  protocol_keeper: "Fyaunz",
  moderator: "Test Moderator",
  present: ("Fyaunz", "Test Person 1", "Test Person 2"),
  absent: ("test Person 3", ""),
)

= Test Heading


#todo_list()

#vote("Testabstimmung", 10, 10, 10)

#vote_page()
