#let open-title-page(settings: ()) = {
  set page(
    paper: "a4",
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: "I",
    number-align: center,
    footer: ""
  )

  set text(
    font: settings.font-body, 
    size: settings.font-body-size, 
    lang: "de"
  )

  set par(leading: 1em)
}

#let finish-title-page(
  settings: (),
  degree: "",
  program: "",
  title-english: "",
  subtitle-english: "",
  title-german: "",
  subtitle-german: "",
  author: "",
  matriculation-number: "",
  supervisor: "",
  advisor: "",
  start-date: none,
  submission-date: none,
  address-line-1: "",
  address-line-2: "",
  email-address: "",
) = {

  v(5mm)
  align(center, text(font: settings.font-heading, 1.9em, weight: 700, degree + "thesis"))
  
  v(8mm)

  align(center, text(font: settings.font-heading, 1.2em, weight: 700, title-german))
  align(center, text(font: settings.font-heading, 1.2em, weight: 500, subtitle-german))
  v(3mm)
  align(center,line(stroke: 1pt + black, length: 15cm))
  v(3mm)
  align(center, text(font: settings.font-heading, 1.2em, weight: 700, title-english))
  align(center, text(font: settings.font-heading, 1.2em, weight: 500, subtitle-english))  

  //v(8mm)
  //align(center, text(font: settings.font-heading, 1.5em, weight: 100, degree + "Thesis " + program))
  v(8mm)
  
  pad(
    top: 3em,
    right: 10%,
    left: 10%,
    grid(
      columns: (3fr, 3fr),
      gutter: 1em,
      strong("Eingereicht von: "), author,
      strong(" "), address-line-1,
      strong(" "), address-line-2,
      strong("Email-Adresse: "), email-address,
      strong("Matrikelnummer: "), matriculation-number,
      strong("Studiengang:"), program,
      strong("Erstbetreuer: "), supervisor,
      strong("Zweitbetreuer: "), advisor,
      strong("Startdatum: "), start-date,
      strong("Abgabedatum: "), submission-date,
    )
  )

  pagebreak()
}