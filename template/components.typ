#import "theme.typ": colors

// Dates

#let date(y, m, d) = datetime(year: y, month: m, day: d)

#let format-date(value) = {
  if type(value) == datetime { value.display("[day].[month].[year]") } else { value }
}

// Checkbox

#let checkbox = box(
  height: 0.8em,
  width: 0.8em,
  stroke: 1pt + colors.muted.lighten(40%),
  radius: 2pt,
  baseline: 20%,
)

// Votes

#let vote(caption, yes, no, abstention) = {
  show figure: set block(below: 2.2em)
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

#let vote-page() = {
  pagebreak()
  outline(
    title: [Abstimmungen],
    target: figure.where(kind: "vote"),
  )
}

// Todos

#let todo-columns = (1fr, 1fr, 3fr)

#let todo-entry(
  due: datetime.today(),
  assignee: "Fabian Adam",
  todo-text: "Do This!",
) = (due: due, assignee: assignee, todo-text: todo-text)

#let todos(..items) = {
  let entries = items.pos().map(item => todo-entry(..item))
  let row-gap = 0.8em

  let clear = white.transparentize(100%)
  let divider = (
    paint: gradient.linear(
      (clear, 0%),
      (clear, 1%),
      (colors.muted, 1%),
      (colors.muted, 99%),
      (clear, 99%),
      (clear, 100%),
      angle: 90deg,
    ),
    thickness: 1pt,
  )

  align(center, block(
    width: 90%,
    stroke: colors.accent + 2pt,
    inset: 1.2em,
    radius: 4pt,
    breakable: true,
    below: 2.5em,
    above: 1.5em,
    grid(
      columns: todo-columns,
      inset: (_, y) => (
        x: 1em,
        top: if y > 0 { row-gap } else { 0pt },
        bottom: if y < entries.len() - 1 { row-gap } else { 0pt },
      ),
      align: left + horizon,
      stroke: none,

      grid.vline(x: 1, stroke: divider),
      grid.vline(x: 2, stroke: divider),
      ..range(1, entries.len()).map(y => grid.hline(y: y, stroke: 0.5pt + colors.muted)),

      ..entries.map(entry => (format-date(entry.due), entry.assignee, entry.todo-text)).flatten(),
    ),
  ))

  for entry in entries {
    [#metadata((due: entry.due, assignee: entry.assignee, text: entry.todo-text)) <todo-item>]
  }
}

#let todo(..fields) = todos(todo-entry(..fields))

#let todo-list() = context table(
  columns: todo-columns,
  stroke: none,
  align: left,
  table.header([*Datum*], [*Zugewiesen*], [*Aufgabe*]),
  table.hline(),
  ..query(<todo-item>).map(item => (format-date(item.value.due), item.value.assignee, item.value.text)).flatten(),
)

#let todo-page() = {
  pagebreak()
  heading(numbering: none, outlined: false)[Aufgaben]
  todo-list()
}
