#let display_position_marks = sys.inputs.at("regmarks", default: "false") == "true"

#let page_size = (
  width: 85mm,
  height: 55mm,
)

#let page_size_a4 = (
  width: 210mm,
  height: 297mm,
)

#let regmark = (
  margin: 10mm,
  page_margin: (
    x: (page_size_a4.height - page_size.width) / 2,
    y: (page_size_a4.width - page_size.height) / 2,
  ),
  overlap: 0mm,
)


#set page(
  width: if display_position_marks == true { page_size_a4.width } else { page_size.width },
  height: if display_position_marks == true { page_size_a4.height } else { page_size.height },
  margin: if display_position_marks == true { regmark.page_margin } else { 0mm },
)

#let position_mark() = {
  let line_width = 0.3mm
  let size = 20mm

  place(
    right + top,
    line(length: size, stroke: (paint: cmyk(0%, 0%, 0%, 100%), thickness: line_width)),
  )

  rotate(90deg, place(
    left + top,
    line(length: size, stroke: (paint: cmyk(0%, 0%, 0%, 100%), thickness: line_width)),
  ))
}


#let render_page() = {
  // registration marks
  if display_position_marks == true {
    let mark_square = 5mm

    place(
      top + left,
      rect(
        width: page_size.width,
        height: page_size.height,
        stroke: (paint: cmyk(50%, 100%, 0%, 0%), thickness: 0.1mm),
      ),
    )

    place(
      top + left,
      dx: -regmark.page_margin.x + regmark.margin,
      dy: -regmark.page_margin.y + 10mm,
      square(size: mark_square, fill: cmyk(0%, 0%, 0%, 100%)),
    )

    place(
      top + left,
      dx: -regmark.page_margin.x - regmark.margin,
      dy: -regmark.page_margin.y + 10mm,
      position_mark(),
    )

    place(
      top + left,
      dx: -regmark.page_margin.x + regmark.margin,
      dy: -regmark.page_margin.y + page_size_a4.height - 10mm,
      rotate(180deg, position_mark()),
    )
  }

  // actual content
  let margin = 3mm
  let logo_w = 17mm

  set text(
    font: "Elms Sans",
    size: 12pt,
  )
  set par(
    leading: 0.80em,
    spacing: 0.80em,
  )

  place(
    left + top,
    block(
      height: page_size.height,
      width: page_size.width,
      place(
        dx: margin,
        dy: margin,
        image("assets/Chaosknoten.svg", width: logo_w, height: auto),
      )
    )
  )

  place(
    left + top,
    block(
      height: page_size.height,
      width: page_size.width,
      place(
        left + top,
        dx: margin + logo_w + 2mm,
        dy: margin - 2mm,
        [
          #text(
            font: "Birthstone",
            size: 30pt,
            "Chaos-Manufaktur",
          )
        ],
      )
    )
  )

  place(
    left + top,
    block(
      height: page_size.height,
      width: page_size.width,
      place(
        center + top,
        dx: 0mm,
        dy: margin + 15mm,
        [
          #text(
            weight: "semibold",
            size: 19.0pt,
            "c3lingo Interpreter Desk",
          )
        ],
      )
    )
  )

  place(
    left + top,
    block(
      height: page_size.height,
      width: page_size.width,
      place(
        left + top,
        dx: margin + 0mm,
        dy: margin + 25mm,
        [
          #table(
            columns: 2,
            stroke: none,
            inset: (x: 0em, y: 0.3em),
            [Power Input:#h(0.3em)], [120--230 V\~, 50 VA max.] ,
            [Audio Input:#h(0.3em)], [Balanced line (+4 dBu)] ,
            [Audio Output:#h(0.3em)], [Balanced line (+4 dBu)],
          )
          Mfg. Date: 2025/12, Serial: #box(width: 4em, stroke: (bottom: 0.5pt), none)
        ],
      )
    )
  )
}



#if display_position_marks == true {
  place(
    left + top,
    dx: 0mm,
    render_page(),
  )
} else {
  render_page()
}
