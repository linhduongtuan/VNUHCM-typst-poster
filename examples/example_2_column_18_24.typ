// Generally, I set 3-column poster as the default format.
// If you want to set your poster with 2-column format
// Please set `num_columns: "2"` in `poster.typ`

#import "../poster.typ": *
#show link: underline
#show: poster.with(
  size: "18x24",
  title: "A typesetting system to untangle the scientific writing process",
  authors: "Linh T. Duong",
  departments: "Department of Computer Science",
  univ_logo_1: "images/bgd.png",
  univ_logo_2: "images/bk.png",
  header_text: "HO CHI MINH CITY UNIVERSITY OF TECNOLOGY",
  header_url: "https://vnuhcm.edu.vn/",
  header_email_ids: "DƯƠNG TUẤN LINH - 10 tháng 6 năm 2023",
  header_color: "#00CCCC",

  footer_text: "Conference on Typesetting Systems, 2023",
  footer_url: "https://www.uit.edu.vn/",
  footer_email_ids: "linhduowngtuan@gmail.com",
  footer_color: "#00CCCC",

  // Modifying the defaults
  keywords: ("Typesetting", "Scientific Writing", "Typst"),
)

= #block(
  fill: rgb("#00FFFF"),
  inset: 10pt,
  radius: 90pt,
  width: 100%,
  [
    Introduction
  ]
)
#v(-0em)
#lorem(3)
#lorem(100)
#figure(
  image("../images/Women_operating_typesetting_machines.png", 
        width: 50%),
  caption: [#lorem(10)]
)
#lorem(60)

= #block(
  fill: aqua, //rgb("#9999FF"),
  inset: 10pt,
  radius: 90pt,
  width: 100%,
  [
    MATERIALS AND METHODS
  ]
)
== #block(
  fill: rgb("#CCFFCC"),
  inset: 10pt,
  radius: 90pt,
  width: 22%,
  [
    MATERIALS
  ]
)
#lorem(30)

+ #lorem(10)
+ #lorem(10)
+ #lorem(10)

#lorem(50)

#set align(center)
#table(
  columns:(auto, auto, auto), 
  inset:(10pt),
 [#lorem(4)], [#lorem(2)], [#lorem(2)],
 [#lorem(3)], [#lorem(2)], [$alpha$],
 [#lorem(2)], [#lorem(1)], [$beta$],
 [#lorem(1)], [#lorem(1)], [$gamma$],
 [#lorem(2)], [#lorem(3)], [$theta$],
)

#set align(left)
#lorem(80)
$ mat(
  1, 2, ..., 8, 9, 10;
  2, 2, ..., 8, 9, 10;
  dots.v, dots.v, dots.down, dots.v, dots.v, dots.v;
  10, 10, ..., 10, 10, 10;
) $
== #block(
  fill: rgb("#FFCCCC"),
  inset: 10pt,
  radius: 90pt,
  width: 20%,
  [
    METHODS
  ]
)

#lorem(65)
#figure(
  image("../images/Standard_lettering.png", 
        width: 100%),
  caption: [#lorem(8)]
)

= #block(
  fill: rgb("#E5CCFF"),
  inset: 10pt,
  radius: 90pt,
  width: 100%,
  [
    RESULTS
  ]
)
== #block(
  fill: rgb("#E5CCBB"),
  inset: 10pt,
  radius: 90pt,
  width: 30%,
  [
    ROSETTA STONE
  ]
)

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  [
    #lorem(80),
    - #lorem(10),
    - #lorem(10),
    - #lorem(10),
  ]
)
== #block(
  fill: rgb("#E5CCBB"),
  inset: 10pt,
  radius: 90pt,
  width: 40%,
  [
    QUANTUM COMPUTER
  ]
)

#lorem(75)
```rust
fn factorial(i: u64) -> u64 {
    if i == 0 {
        1
    } else {
        i * factorial(i - 1)
    }
}
```

= #block(
  fill: rgb("#E5CCBB"),
  inset: 10pt,
  radius: 90pt,
  width: 100%,
  [
    CONCLUSIONS
  ]
)
#lorem(100)
- #lorem(10)
  - #lorem(5)
  - #lorem(8)
- #lorem(15)
  - #lorem(9)
  - #lorem(7)

$ sum_(k=1)^n k = (n(n+1)) / 2 = (n^2 + n) / 2 $

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  [
    #lorem(30),
  ]
)

#figure(
  image("../images/Rosetta_stone.png", 
        width: 35%),
  caption: [#lorem(30)]
)


= #block(
  fill: rgb("#E5CCBB"),
  inset: 10pt,
  radius: 90pt,
  width: 100%,
  [
    ACKNOWLEDGEMENT
  ]
)

- Thank you, #link("https://github.com/pncnmnp/typst-poster")[Parth Parikh], for the amazing tutorial on how to create a poster using Typst