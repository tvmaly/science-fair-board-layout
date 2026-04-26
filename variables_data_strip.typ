#import "common.typ": *

#set page(paper: "us-letter", flipped: true, margin: 0in)
#set text(font: font_name, size: body_size)

#card(width: 10.5in, height: 6in)[
#grid(columns: (0.9fr, 1.1fr), gutter: 0.28in)[
  #block[
    #section_title("Variables")
    #v(0.12in)
    #placeholder_note

    #subsection("Independent")
    PLACEHOLDER: Material tested.

    #subsection("Dependent")
    PLACEHOLDER: What changed in the Tesla coil demonstration.

    #subsection("Controlled")
    PLACEHOLDER: Distance, time, coil setting, and room setup.
  ]
][
  #block[
    #section_title("Data")
    #v(0.12in)
    #text(size: 14pt)[
      #table(
        columns: (0.65in, 1.25in, 1.25in, 1.25in),
        inset: 4pt,
        stroke: 0.5pt + black,
        [Trial], [Material], [Observation], [Result],
        [1], [PLACEHOLDER], [PLACEHOLDER], [PLACEHOLDER],
        [2], [PLACEHOLDER], [PLACEHOLDER], [PLACEHOLDER],
        [3], [PLACEHOLDER], [PLACEHOLDER], [PLACEHOLDER],
        [4], [PLACEHOLDER], [PLACEHOLDER], [PLACEHOLDER],
      )
    ]
  ]
]

#v(0.06in)
#align(center)[#text(size: 10pt)[LOWER CENTER CAN STAY MOSTLY CLEAR IF THE TESLA COIL BLOCKS THE BOARD.]]
]
