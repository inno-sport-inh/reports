#import "ilm/lib.typ": *

#set text(
  lang: "en", 
  font: "Libertinus Serif"
)

#show link: set text(hyphenate: true, fill: blue)
#show link: underline

#show table.cell.where(y: 0): it => { smallcaps(strong(it)) }

#set list(indent: 1em)
#set enum(indent: 1em)

#show: ilm.with(
  title: [Assignment 5. \ Quality Attributes and Architecture],
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
        [Aleksandr Cherkasov \ a.cherkasov \ SanyaLikeIT], [Team-Lead \ Backend], [ 
          - Project management
          - Backend development
          - Organised meeting with the customer and discussed new features        
        ],
        [Almir Avkhadiev \ a.avkhadiev \ constabIe], [Backend, QA], [
          - Integration tests
          - Unit tests
          - README.md 
        ],
        [Anton Bugaev \ an.bugaev \ An11y], [Frontend], [
          - Fixing bugs
          - Implementing new frontend features
        ],
        [Dmitriy Ezovskikh \ d.ezovskikh \ Salamer2], [Backend], [
          - Assignment 5 preparation \
          - Updating CI \
        ],
        [Timur Daminov \ t.daminov \ daminow], [Frontend], [
          - Fixing bugs
          - Implementing new frontend features
        ]
      )
      
    ]
  ],
  // bibliography: bibliography("refs.yml", title: [References]),
  external-link-circle: false,
  chapter-pagebreak: false
)

= Broduct backlog (Kanban board)
#link("https://github.com/orgs/inno-sport-inh/projects/1")

= Sprint 5 milestone
The development of backend and frontend parts of the project takes place in different repositories within github organization. Milestone in below links are the same, but tasks are different.\
- #link("https://github.com/inno-sport-inh/frontend/milestone/3") \
- #link("https://github.com/inno-sport-inh/backend/milestone/3")

= Updated sprint tracking table with the Roadmap.
#link("https://docs.google.com/spreadsheets/d/1gCACS5LkCOjsXijKPbO_xkv4q1_KrqgI3_VfKA2161Q/edit?usp=sharing")

== Demo video
#link("https://disk.yandex.ru/i/WlsXpBPXi6LQyA")

== Deployment
=== Old backend
Admin panel of the main sport site: #link("http://t9d.store") \

Superuser data: \
#h(1em) login: `ex.user@innopolis.university` \
#h(1em) password: `rwe-11e-mftnxl` 

=== New frontend
New front of the sport site: #link("https://frontend-prod-eta.vercel.app") \

#pagebreak()
= Testing session
There were two new user acceptance tests introduced: \
- The student is trying to sign up for a training session from the club's page
- The student is looking for information on the FAQ

All tests (including old and new) are pass except: 
- Register for the training session from the club's website
- Assessment of comfort in using the main page of the website

Customers suggestions: \
- Fix the lag when switching the color theme
- Address the issue with the questionable slider on the hour scale
- Change the loading animation
- Remove the warning about canceling a training session
- Remove the ability to sign up for future training sessions from the club page (more than 1 week in advance)

== User testing link
#link("https://disk.yandex.ru/i/sE_SiPjtOgzFEQ")

== Retrospective on the process and customer collaboration
Customer collaboration was productive. We got useful suggestions what should be changed and improved our roadmap. The development was efficient too. Several improvements were made in the frontend.

#pagebreak()

= Updated CI workflow

== Workflow files:
- https://github.com/inno-sport-inh/backend/blob/main/.github/workflows/tests.yaml
- https://github.com/inno-sport-inh/frontend/blob/main/.github/workflows/node.js.yml
Github actions pages:

New static analysis tool for python were added: \
#box(
  inset: 0.5em,
  stroke: black,
)[
#set text(size: 10pt)
  *Vulture* - a python tool that finds unused code such as dead functions, classes, variables and imports.
// #set text(size: 12pt)
] \
*Vulture* reports for python can be found here: \
#link("https://github.com/inno-sport-inh/backend/actions") \
- Under each (new) workflow run, there will be "vulture-report" file attached.

= README.md
#link("https://github.com/inno-sport-inh/backend/blob/main/README.md")

= Example of issues created with new templates:
== Bug
#link("https://github.com/inno-sport-inh/frontend/issues/24")
== Feature
#link("https://github.com/inno-sport-inh/frontend/issues/22")

= PR examples
#link("https://github.com/inno-sport-inh/backend/pull/33") \
#link("https://github.com/inno-sport-inh/backend/pull/32")

= AI Usage
In this assignment, LLMs were used to help with the large amount of text. For example, they helped creating issues descriptions and PR templates. Also, it is helped to make README.md