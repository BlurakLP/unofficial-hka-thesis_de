#import "@preview/unofficial-hka-thesis:1.1.1": *
#import "settings/metadata.typ": *
#import "settings/settings.typ": *
#import "@preview/glossarium:0.5.4": make-glossary, register-glossary

#show: make-glossary


#set document(title: title-english, author: author)
#open-title-page(settings: settings)
// Customize your company logo or just use the one from the university
#grid(
  columns: (1fr, 1fr),
  align(left)[
    #image("/logo/HKA_FakultaetW_logo.png", height: 3cm)
  ],
  align(right)[
    #image("/logo/HKA_logo.png", height: 3cm)
  ]
)

#finish-title-page(
  settings: settings,
  degree: degree,
  program: program,
  title: title-english,
  subtitle: subtitle-english,
  author: author,
  matriculation-number: matriculation-number,
  supervisor: supervisor,
  advisor: advisor,
  start-date: start-date,
  submission-date: submission-date,
  address-line-1: address-line-1,
  address-line-2: address-line-2,
  email-address: email-address,
)

#show: preface.with(settings: settings)

// Citations - applied here so that you are able to use a local CSL file to define the citation style
#set cite(style: settings.citation-style)

// Statutory Declaration
#include "supplementary/statutoryDeclaration.typ"
#pagebreak()

// Abstract
#include "supplementary/abstract.typ"
#pagebreak()

// Abstract German
#include "supplementary/abstractGerman.typ"
#pagebreak()


#show: main-body.with(
  settings: settings
)

#include "chapters/1_introduction.typ"

#include "chapters/2_foundations.typ"

//Bibliography
#pagebreak()
#bibliography("bibliography/thesis.bib")

//Appendix
#appendix()[
  #include "chapters/A1_Material.typ"

  #include "chapters/A2_Transcripts.typ"
]