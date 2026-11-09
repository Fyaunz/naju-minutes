#import "template/lib.typ": *

#show: protokoll.with(
  title: "Test Titel",
  author: "Fyaunz",
  date: date(2026, 10, 25),
  location: "Bamberg",
  protocol-keeper: "Fyaunz",
  moderator: "Test Moderator",
  present: ("Fyaunz", "Test Person 1", "Test Person 2"),
  absent: "Test Person 3",
)

= Test Heading

#todos(
  (due: date(2026, 1, 16), assignee: "Fyaunz", todo-text: "Protokoll verschicken"),
  (due: date(2026, 1, 23), assignee: "Test Person 1", todo-text: "Raum für das nächste Treffen reservieren"),
)

#vote("Testabstimmung", 12, 10, 10)

#lorem(40)

= Zweiter Test Heading

#lorem(40)

#todos(
  (due: date(2026, 2, 1), assignee: "Test Person 2", todo-text: "Material für die Exkursion besorgen"),
  (due: date(2026, 2, 13), assignee: "Test Person 3", todo-text: "Einladung zur Jahresversammlung vorbereiten"),
)

#lorem(100)

#todo-page()

#vote-page()
