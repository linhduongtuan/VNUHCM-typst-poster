// This function gets your whole document as its `body` and formats
// it as an article in the style of a Poster.
#let poster(
  // The poster's size.
  size: "'36x24' or '48x36''",

  // The poster's title.
  title: "Paper Title",

  // A string of author names.
  authors: "Author Names (separated by commas)",

  // Department name.
  departments: "Department Name",

  // University logo.
  univ_logo_1: "Logo Path",
  univ_logo_2: "Logo Path",

  // header text.
  // For instance, Name of Fist Athor, Date, Location.
  // or Course Name, Date, Instructor, University, ect.
  header_text: "Footer Text",

  // Any URL, like a link to the conference website.
  header_url: "Footer URL",

  // Email IDs of the authors.
  header_email_ids: "Email IDs (separated by commas)",

  // Color of the header.
  header_color: "Hex Color Code",

  // Footer text.
  // For instance, Name of Conference, Date, Location.
  // or Course Name, Date, Instructor.
  footer_text: "Footer Text",

  // Any URL, like a link to the conference website.
  footer_url: "Footer URL",

  // Email IDs of the authors.
  footer_email_ids: "Email IDs (separated by commas)",

  // Color of the footer.
  footer_color: "Hex Color Code",

  // DEFAULTS
  // ========
  // For 3-column posters, these are generally good defaults.
  // Tested on 36in x 24in, 48in x 36in, and 36in x 48in posters.
  // For 2-column posters, you may need to tweak these values.
  // See ./examples/example_2_column_18_24.typ for an example.

  // Any keywords or index terms that you want to highlight at the beginning.
  keywords: (),

  // Number of columns in the poster.
  num_columns: "2",

  // University logo's scale (in %).
  univ_logo_scale: "100",

  // University logo's column size (in in).
  univ_logo_column_size_1: "10",
  univ_logo_column_size_2: "10",


  // Title and authors' column size (in in).
  title_column_size: "20",

  // Poster title's font size (in pt).
  title_font_size: "48",

  // Authors' font size (in pt).
  authors_font_size: "36",

  // Header's URL and email font size (in pt).
  header_url_font_size: "30",

  // Header's text font size (in pt).
  header_text_font_size: "40",

  // Footer's URL and email font size (in pt).
  footer_url_font_size: "30",

  // Footer's text font size (in pt).
  footer_text_font_size: "40",

  // The poster's content.
  body
) = {
  // Set the body font.
  set text(font: "STIX Two Text", size: 16pt)
  let sizes = size.split("x")
  let width = int(sizes.at(0)) * 1in
  let height = int(sizes.at(1)) * 1in
  univ_logo_scale = int(univ_logo_scale) * 0.3%
  title_font_size = int(title_font_size) * 1pt
  authors_font_size = int(authors_font_size) * 1pt
  num_columns = int(num_columns)
  univ_logo_column_size_1 = int(univ_logo_column_size_1) * 1.2cm
  univ_logo_column_size_2 = int(univ_logo_column_size_2) * 1.7cm
  title_column_size = int(title_column_size) * 2in
  header_url_font_size = int(header_url_font_size) * 1pt
  header_text_font_size = int(header_text_font_size) * 1pt
  footer_url_font_size = int(footer_url_font_size) * 1pt
  footer_text_font_size = int(footer_text_font_size) * 1pt

  // Configure the page.
  // This poster defaults to 36in x 24in.
  set page(
    width: width,
    height: height,
    margin: 
      (top: 1in, left: 2in, right: 2in, bottom: 2in),
    
    header: [
      #set align(center)
      #set text(32pt)
      #block(
        fill: rgb(header_color),
        width: 100%,
        inset: 10pt,
        outset: 10pt,
        radius: 10pt,
        [ #v(1cm)
          #text(font: "Courier", size: header_url_font_size, header_url) 
          #h(1fr) 
          #text(size: header_text_font_size, smallcaps(header_text)) 
          #h(1fr) 
          #text(font: "Courier", size: header_url_font_size, header_email_ids)
        ]
      )
    ],

    footer: [
      #set align(center)
      #set text(32pt)
      #block(
        fill: rgb(footer_color),
        width: 100%,
        inset: 20pt,
        radius: 10pt,
        [
          #text(font: "Courier", size: footer_url_font_size, footer_url) 
          #h(1fr) 
          #text(size: footer_text_font_size, smallcaps(footer_text)) 
          #h(1fr) 
          #text(font: "Courier", size: footer_url_font_size, footer_email_ids)
        ]
      )
    ],
  )

  // Configure equation numbering and spacing.
  set math.equation(numbering: "(1)")
  show math.equation: set block(spacing: 0.65em)

  // Configure lists.
  set enum(indent: 10pt, body-indent: 9pt)
  set list(indent: 10pt, body-indent: 9pt)

  // Configure headings.
  
  //set heading(numbering: "I.A.1.",)
  show heading: it => locate(loc => {
    // Find out the final number of the heading counter.
    let levels = counter(heading).at(loc)
    let deepest = if levels != () {
      levels.last()
    } else {
      1
    }

    set text(24pt, weight: 400)
    if it.level == 1 [
      // First-level headings are centered smallcaps.
      #set align(center)
      #set text({ 32pt })
      #show: smallcaps
      #v(50pt, weak: true)
      #if it.numbering != none {
        numbering("I.", deepest)
        h(7pt, weak: true)
      }
      #it.body
      // Set a line space below every heading
      #v(20pt, weak: true)
      #line(length: 100%)
    ] else if it.level == 2 [
      // Second-level headings are run-ins.
      #set text(style: "italic", weight: "bold")
      #v(10pt, weak: true)
      #if it.numbering != none {
        numbering("i.", deepest)
        h(7pt, weak: true)
      }
      #it.body
      #v(10pt, weak: true)
    ] else [
      // Third level headings are run-ins too, but different.
      #if it.level == 3 {
        numbering("1)", deepest)
        [ ]
      }
      _#(it.body):_
    ]
  })
  

  // Arranging the logo, title, authors, and department in the header.
  align(left,
    grid(
      rows: 2,
      columns: (univ_logo_column_size_1, univ_logo_column_size_2, title_column_size),
      column-gutter: 0pt,
      row-gutter: 30pt,
      image(univ_logo_1, width: univ_logo_scale),
      image(univ_logo_2, width: univ_logo_scale),
      text(title_font_size, title + "\n\n") + 
      text(authors_font_size, emph(authors) + 
          "   (" + departments + ") "),
    )
  )

  // Start three column mode and configure paragraph properties.
  show: columns.with(num_columns, gutter: 64pt)
  set par(justify: true, first-line-indent: 0em)
  show par: set block(spacing: 0.65em)

  // Display the keywords.
  if keywords != () [
      #set text(24pt, weight: 400)
      #show "Keywords": smallcaps
      *Keywords* --- #keywords.join(", ")
  ]

  // Display the poster's contents.
  body
}