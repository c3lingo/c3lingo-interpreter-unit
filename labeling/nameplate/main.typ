#let display_position_marks = sys.inputs.at("regmarks", default: "false") == "true"
#let inverted = sys.inputs.at("inverted", default: "false") == "true"

// above C14 socket: max. 40mm height
#let page_size = (
  width: 80mm,
  height: 40mm,
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
  fill: if inverted == true { black } else { white },
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
  let border_color = if inverted == true { white } else { black }

  set text(
    font: "Elms Sans",
    size: 12pt,
    fill: if inverted == true { white } else { black },
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
        dx: page_size.width - logo_w - margin,
        dy: margin,
        image(
          width: logo_w,
          height: auto,
          if inverted == true { "assets/chaosknoten-white.svg" } else { "assets/chaosknoten-black.svg" },
        ),
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
        dx: margin + 4mm,
        dy: margin - 2.5mm,
        [
          #text(
            font: "Birthstone",
            size: 24pt,
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
      width: page_size.width - 2*margin,
      place(
        left + top,
        dx: margin,
        dy: margin + 8.5mm,
        [
          #set par(leading: 0.6em)
          #text(
            weight: "semibold",
            size: 15pt,
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
        dy: margin + 15mm,
        [
          #set par(leading: 0.6em, spacing: 0.6em)
          #set box(stroke: border_color, outset: 3pt)
          #table(
            columns: 2,
            gutter: 0.3em,
            stroke: none,
            inset: (x: 0em, y: 0.3em),
            [Power:#h(0.4em)], [#box(width: 12em, [120--230 V\~, 50 VA max.])] ,
            [Audio:#h(0.4em)], [#box(width: 12em, [Balanced line (+4 dBu)])] ,
          )
          Mfg. Date: #box([2026/11])
          #h(0.4em) Serial: #box(width: 4em, height: 0.7em, fill: white)
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
