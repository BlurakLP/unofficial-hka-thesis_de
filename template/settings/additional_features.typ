#let codefigure(body, caption, label: none) = {
  let fig = figure(
    align(start,
    block(
      fill: rgb("#f3f3f3"),
      inset: 10pt,
      radius: 6pt,
      stroke: rgb("#d9d9d9"),
      width: 100%,
    )[#body]),
    caption: caption,
    kind: "code",
    supplement: [Code],
  )

  if label == none {
    fig
  } else {
    [#fig <#label>]
  }
}