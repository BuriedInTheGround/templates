#let title = [Document Title]
#let author = "Simone Ragusa"

#set document(title: title, author: author)
#set heading(numbering: "1.")
#set par(linebreaks: "optimized")
#set page(
  paper: "a4",
  numbering: "1",
  header: align(right + horizon, title),
)
#set text(font: "Libertinus Serif", size: 11pt, lang: "en")

#align(center, text(17pt)[*#title*])

#align(center)[
  #author \
  #link("https://interrato.dev/")
]

= Heading
#lorem(200)
