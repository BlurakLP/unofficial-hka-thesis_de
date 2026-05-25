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
  title: "",
  subtitle: "",
  title-german: "",
  subtitle-german: "",
  author: "",
  matriculation-number: "",
  place-of-work: "",
  supervisor: "",
  advisor: "",
  start-date: none,
  submission-date: none,
  address-line-1: "",
  address-line-2: "",
  email-address: "",
) = {

  v(5mm)
  align(center, text(font: settings.font-heading, 1.9em, weight: 700, "Hochschule Karlsruhe"))
  
  v(15mm)

  align(center, text(font: settings.font-heading, 1.5em, weight: 100, degree + "Thesis in " + program))
  v(8mm)

  if title-german.len() > 0 {
    if subtitle.len() > 0 or subtitle-german.len() > 0 {
      align(center, text(font: settings.font-heading, 1.2em, weight: 700, title))
      align(center, text(font: settings.font-heading, 1.2em, weight: 500, subtitle))
      v(10mm)
      align(center, text(font: settings.font-heading, 1.2em, weight: 700, title-german))
      align(center, text(font: settings.font-heading, 1.2em, weight: 500, subtitle-german))  
    } else {
      align(center, text(font: settings.font-heading, 1.4em, weight: 700, title))
      v(10mm)
      align(center, text(font: settings.font-heading, 1.4em, weight: 700, title-german))
    }
  } else {
    if subtitle.len() > 0 {
      align(center, text(font: settings.font-heading, 1.8em, weight: 700, title))
      v(5mm)
      align(center, text(font: settings.font-heading, 1.4em, weight: 500, subtitle))
    } else {
      align(center, text(font: settings.font-heading, 2.0em, weight: 700, title))
    }
    
  }

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
      strong("Place of Work: "), place-of-work,
      strong("Erstbetreuer: "), supervisor,
      strong("Zweitbetreuer: "), advisor,
      strong("Startdatum: "), start-date,
      strong("Abgabedatum: "), submission-date,
    )
  )

  pagebreak()
}