# VNUHCM-Typst-Poster

This is an academic poster template designed for [Typst](https://github.com/typst/typst). Supports both horizontal and vertical posters.

# What does it look like?

![Example of a horizotal poster](./examples/example.pdf)

# Getting Started

To get started, use the following code:

```typ
#import "poster.typ": *

#show: poster.with(
  size: "Tested on '36x24', '48x36', and '48x36'. See examples dir'",
  title: "Poster Title",
  authors: "Author Names (comma separated)",
  departments: "Department Name",
  univ_logo:_1 "Logo Path",
  univ_logo:_2: "Logo Path",

  // You can custom both Header and Footer contents for your own purpose.
  header_text: "Name of Conference or Course Name",
  header_url: "Conference URL",
  header_email_ids: "Email IDs of authors (comma separated)",
  header_color: "Hex Color Code"

  footer_text: "Name of Conference or Course Name",
  footer_url: "Conference URL",
  footer_email_ids: "Email IDs of authors (comma separated)",
  footer_color: "Hex Color Code",

  // Additional Parameters
  // =====
  // For 3-column posters, these usually DO NOT require any adjustments.
  // However, they are important for 2-column posters.
  // Refer to ./examples/example_2_column_18_24.typ for an example.
  // Defaults are commented on the right side

  keywords: Array of keywords, // default is empty
  num_columns: "Number of columns in the poster", // 3
  univ_logo_scale: "University logo's scale (in %)", // 100%
  univ_logo_column_size: "University logo's column size (in in)", // 10in
  title_column_size: "Title and authors' column size (in in)", // 20in
  title_font_size: "Poster title's font size (in pt)", // 48pt
  authors_font_size: "Authors' font size (in pt)", // 36pt
  header_url_font_size: "Header's URL and email font size (in pt)", // 30pt
  header_text_font_size: "Header's text font size (in pt)", // 40pt
  footer_url_font_size: "Footer's URL and email font size (in pt)", // 30pt
  footer_text_font_size: "Footer's text font size (in pt)", // 40pt
)

// Proceed with your content as usual
```

For an example, refer to [`example.typ`](https://github.com/linhduongtuan/VNUHCM-typst-poster/blob/master/examples/example.typ). The default dimensions are `36in` in width and `24in` in height.


# License

This template is licensed under the [MIT License](https://github.com/linhduongtuan/VNUHCM-typst-poster/blob/master/LICENSE).

### For further reference:
- *If you want to learn how to create a thesis template, please refer to [my other repository](https://github.com/linhduongtuan/BKHN-Thesis_template_typst).*
- *If you want to learn how to create presentation slides, please refer to [my other repository](https://github.com/linhduongtuan/DTU-typst-presentation).*

### Acknowledgement
- I make changes to and improve something in my repository based on the reference in [this repository](https://github.com/pncnmnp/typst-poster).
