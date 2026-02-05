#set text(dir: rtl)

// #set text(font: "Arial")

#set text(lang: "en", font: "NewComputerModern")
#set text(lang: "he", font: "David CLM")

// Configure code blocks
#show raw.where(block: true): it => {
  set text(dir: ltr)
  block(
    fill: luma(245),
    inset: 10pt,
    radius: 4pt,
    width: 100%,
    it,
  )
}

#show raw.where(block: false): it => {
  set text(dir: ltr)
  box(
    fill: luma(240),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
    it,
  )
}
