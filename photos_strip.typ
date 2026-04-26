#import "common.typ": *

// Photos intentionally has no section title.
#set page(paper: "us-letter", flipped: true, margin: 0in)
#set text(font: font_name, size: body_size)

#card(width: 10.5in, height: 5.25in)[
#grid(
  columns: (1fr, 1fr),
  rows: (1fr, 1fr),
  gutter: 0.12in,
  photo_box("PHOTO PLACEHOLDER: setup"),
  photo_box("PHOTO PLACEHOLDER: Tesla coil"),
  photo_box("PHOTO PLACEHOLDER: Faraday cage"),
  photo_box("PHOTO PLACEHOLDER: test result"),
)
]
