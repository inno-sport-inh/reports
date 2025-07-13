#import "ilm/lib.typ": *

#set text(
  lang: "en", 
  font: "Libertinus Serif"
)

#show link: set text(hyphenate: true, fill: blue)
#show link: underline

#show table.cell.where(y: 0): it => { smallcaps(strong(it)) }

#show: ilm.with(
  title: [Assignment 6. \ Delivering a valuable product],
  author: "InnoSport Website, Team 9",
  date: datetime.today(),
  abstract: [
    #box[
      #smallcaps(strong("Customer")): Artem Bulgakov, Ruslan Belkov (one-zero-eight)
      #table(
        columns: (10em, auto, auto),
        stroke: (x, y) => (bottom: 1pt),
        inset: 7pt,
        table.header([Member], [Role], [Tasks]),
        [Aleksandr Cherkasov], [Backend], [ 
          --
        ],
        [Almir Avkhadiev], [Backend, QA], [
          --
        ],
        [Anton Bugaev], [Frontend], [
          --
        ],
        [Dmitriy Ezovskikh], [Frontend], [
          --
        ],
        [Timur Daminov], [Team-Lead, \ Frontend], [
          --
        ]
      )
    ]
  ],
  // bibliography: bibliography("refs.yml", title: [References]),
  external-link-circle: false,
  chapter-pagebreak: false
)

