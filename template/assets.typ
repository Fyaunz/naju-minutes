// Logo and icons. The files themselves live in `resources/`.

#let logo(height) = image("../resources/Logo.png", height: height)

#let icon(name) = box(
  height: 0.8em,
  baseline: 0.1em,
  image("../resources/icons/" + name + ".svg"),
)

#let icons = (
  date: icon("date"),
  attending: icon("attending"),
  absent: icon("absent"),
  writer: icon("writer"),
  moderator: icon("moderator"),
  location: icon("location"),
)
