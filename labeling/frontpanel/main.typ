#let display_cut = sys.inputs.at("cut", default: "false") == "true"
#let display_keepout = sys.inputs.at("keepout", default: "false") == "true"
#let display_print = sys.inputs.at("print", default: "true") == "true"
#let display_reference = false
#let display_position_marks = sys.inputs.at("regmarks", default: "false") == "true"

#let channel_spacing = 120mm
#let mix_know_spacing = 22.5mm

#let page_size = (
  width: 346mm,
  height: 190mm,
)

#let page_size_a4 = (
  width: 210mm,
  height: 297mm,
)

#let page_size_a3 = (
  width: page_size_a4.height,
  height: page_size_a4.width * 2,
)

#let regmark = (
  margin: 10mm,
  page_margin: (
    x: (page_size_a3.height - page_size.width) / 2,
    y: (page_size_a3.width - page_size.height) / 2,
  ),
  overlap: 40mm,
)


#set page(
  width: if display_position_marks == true { page_size_a4.width } else { page_size.width },
  height: if display_position_marks == true { page_size_a3.width } else { page_size.height },
  margin: if display_position_marks == true { regmark.page_margin } else { 0mm },
)

#let reference_margin = 3mm

#if display_reference == true {
  place(
    left + top,
    dx: -reference_margin,
    dy: -reference_margin,
    image(
      "assets/reference.pdf",
      width: page_size.width + reference_margin * 2,
      height: page_size.height + reference_margin * 2,
    ),
  )
}

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


#let knob(
  cut: none,
  keepout: none,
  ticks: false,
  tickLength: 2mm,
  tickDistance: none,
  tickCount: 3,
  tickStart: -135deg,
  tickEnd: 135deg,
) = {
  tickCount = tickCount - 1
  if display_cut == true and cut != none {
    place(
      center + horizon,
      circle(radius: cut, stroke: cmyk(0%, 50%, 50%, 0%)),
    )
  }

  if display_keepout == true and keepout != none {
    place(
      center + horizon,
      circle(radius: keepout, stroke: cmyk(50%, 0%, 0%, 00%)),
    )
  }

  if display_print == true and ticks == true {
    let n = 0
    while n <= tickCount {
      let angleSize = (tickEnd - tickStart) / tickCount
      let lengthSize = if type(tickLength) == array {
        (tickLength.at(1) - tickLength.at(0)) / tickCount
      } else {
        0mm
      }
      let lengthStart = if type(tickLength) == array {
        tickLength.at(0)
      } else {
        tickLength
      }
      place(
        rotate(
          tickStart + n * angleSize - 90deg,
          place(
            left + horizon,
            dx: cut + tickDistance,
            line(length: lengthStart + n * lengthSize, stroke: (cap: "round")),
          ),
        ),
      )
      n = n + 1
    }
  }
}

#let channel = {
  if display_print == true {
    place(
      center + horizon,
      dx: 30.3mm,
      dy: 52.9mm,
      text(
        font: "Inclusive Sans",
        weight: 900,
        size: 16pt,
        "on air",
      ),
    )

    place(
      center + horizon,
      dx: 69.3mm,
      dy: 37.6mm,
      text(
        font: "Inclusive Sans",
        weight: 900,
        size: 16pt,
        "gain",
      ),
    )

    place(
      center + horizon,
      dx: 42.8mm,
      dy: 47.5mm,
      text(
        font: "Inclusive Sans",
        weight: 900,
        size: 12pt,
        "min",
      ),
    )

    place(
      center + horizon,
      dx: 63.6mm,
      dy: 47.5mm,
      text(
        font: "Inclusive Sans",
        weight: 900,
        size: 12pt,
        "max",
      ),
    )

    place(
      center + horizon,
      dx: 52.7mm,
      dy: 168.6mm,
      text(
        font: "Inclusive Sans",
        weight: 900,
        size: 16pt,
        "mute",
      ),
    )

    let line_height = 7.58mm
    let line_width = 1.66mm
    let line_top = 58.23mm
    let line_thickness = 0.25mm
    place(
      dx: 58mm,
      dy: line_top,
      rotate(
        90deg,
        place(
          left + horizon,
          line(length: line_height, stroke: (thickness: line_thickness, cap: "round")),
        ),
      ),
    )
    place(
      right + horizon,
      dx: 58mm,
      dy: line_top,
      line(length: line_width, stroke: (thickness: line_thickness, cap: "round")),
    )
    place(
      right + horizon,
      dx: 58mm,
      dy: line_top + line_height,
      line(length: line_width, stroke: (thickness: line_thickness, cap: "round")),
    )

    place(
      left + top,
      dx: 59.3mm,
      dy: 57.5mm,
      par(
        leading: 1.4mm,
        text(
          font: "Inclusive Sans",
          weight: 400,
          style: "italic",
          size: 14pt,
          [target\ level],
        ),
      ),
    )
  }

  if display_cut == true {
    place(
      top + left,
      dx: 24.75mm,
      dy: 32.36mm,
      square(
        width: 11.5mm,
        stroke: (
          paint: cmyk(0%, 50%, 50%, 0%),
          thickness: 0.2mm,
        ),
      ),
    )

    place(
      top + left,
      dx: 50.24mm,
      dy: 50.86mm,
      rect(
        width: 5.5mm,
        height: 29.9mm,
        stroke: (
          paint: cmyk(0%, 50%, 50%, 0%),
          thickness: 0.2mm,
        ),
      ),
    )
  }

  place(
    top + left,
    dx: 30.5mm,
    dy: 47.1mm,
    knob(cut: 1.6mm),
  )

  let keepout = 8.1mm
  place(
    top + left,
    dx: 53mm,
    dy: 38.1mm,
    knob(
      cut: 5mm,
      keepout: keepout,
      ticks: true,
      tickDistance: 2.1mm,
      tickLength: 3.6mm,
    ),
  )

  let n = 0
  let labels = ("floor", "self", "others")
  while n < 3 {
    let cut = 5mm
    place(
      top + left,
      dx: 30.5mm + n * mix_know_spacing,
      dy: 100.1mm,
      knob(
        cut: cut,
        keepout: cut + 4.05mm,
        ticks: true,
        tickDistance: 3.1mm,
        tickLength: 3.6mm,
      ),
    )

    if display_print == true {
      place(
        center + horizon,
        dx: 30.5mm + n * mix_know_spacing,
        dy: 117mm,
        text(
          font: "Inclusive Sans",
          weight: 900,
          size: 16pt,
          labels.at(n),
        ),
      )

      place(
        center + horizon,
        dx: 21.5mm + n * mix_know_spacing,
        dy: 111.1mm,
        [
          #place(
            center + horizon,
            text(
              font: "Roboto",
              weight: 900,
              size: 11pt,
              "−",
            ),
          )
          #place(
            center + horizon,
            dx: 3mm,
            dy: -0.4mm,
            text(
              font: "Roboto",
              weight: 900,
              size: 11pt,
              "∞",
            ),
          )],
      )

      place(
        center + horizon,
        dx: 37.5mm + n * mix_know_spacing,
        dy: 111.0mm,
        text(
          font: "Roboto",
          weight: 900,
          size: 11pt,
          "+10",
        ),
      )
    }
    n = n + 1
  }

  place(
    top + left,
    dx: 53mm,
    dy: 150.6mm,
    knob(cut: 12.25mm),
  )
}


#let render_page(second: false) = {
  let overlap_offset = if second == true { regmark.overlap / -2 } else { regmark.overlap / 2 }
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

    if display_cut != true {
      let i = 0
      while i < 2 {
        place(
          top + left,
          dx: -regmark.page_margin.x + regmark.margin + i * page_size_a4.width + overlap_offset,
          dy: -regmark.page_margin.y + 10mm,
          square(size: mark_square, fill: cmyk(0%, 0%, 0%, 100%)),
        )

        place(
          top + left,
          dx: -regmark.page_margin.x + (1 + i) * page_size_a4.width - regmark.margin + overlap_offset,
          dy: -regmark.page_margin.y + 10mm,
          position_mark(),
        )

        place(
          top + left,
          dx: -regmark.page_margin.x + i * page_size_a4.width + regmark.margin + overlap_offset,
          dy: -regmark.page_margin.y + page_size_a4.height - 10mm,
          rotate(180deg, position_mark()),
        )

        i = i + 1
      }
    }
  }

  if display_print == true {
    place(
      left + top,
      dx: 14.3mm,
      dy: 59.6mm,
      rotate(
        -90deg,
        place(
          left + bottom,
          text(
            font: "Inclusive Sans",
            weight: 400,
            size: 20pt,
            top-edge: "x-height",
            bottom-edge: "baseline",
            "Mic",
          ),
        ),
      ),
    )

    place(
      left + top,
      dx: 14.3mm,
      dy: 105.8mm,
      rotate(
        -90deg,
        place(
          left + bottom,
          text(
            font: "Inclusive Sans",
            weight: 400,
            size: 20pt,
            top-edge: "x-height",
            bottom-edge: "baseline",
            "Mix",
          ),
        ),
      ),
    )

    place(
      left + top,
      block(
        height: page_size.height,
        width: page_size.width,
        place(
          left + top,
          dx: 9mm,
          dy: 8mm,
          par(
            leading: 1em,
            [
              #text(
                font: "Inclusive Sans",
                weight: 600,
                size: 20pt,
                "c3lingo Interpreter Desk",
              )
            ],
          ),
        ),
      ),
    )

    place(
      dx: 314mm,
      dy: 5.3mm,
      image("assets/Chaosknoten.svg", width: 26mm, height: auto),
    )
  }

  let n = 0
  while n < 3 {
    place(
      top + left,
      dx: 0mm + n * channel_spacing,
      channel,
    )
    n = n + 1
  }
}



#if display_position_marks == true {
  place(
    left + top,
    dx: -regmark.overlap / 2,
    render_page(),
  )
  pagebreak()
  place(
    left + top,
    dx: -page_size_a4.width + regmark.overlap / 2,
    render_page(second: true),
  )
} else {
  render_page()
}
