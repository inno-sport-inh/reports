#import "ilm/lib.typ": *

#set text(lang: "en")
#show link: set text(hyphenate: true, fill: blue)
#show link: underline

#set text(font: "Libertinus Serif")

#show: ilm.with(
  title: [Assignment 2. \ Plan, design, deploy],
  author: "InnoSport website, Team 9",
  date: datetime.today(),
  abstract: [
    #box[
      // Customer: Artem Bulgakov, Ruslan Belkov (one-zero-eight)
      #set table(
        inset: 7pt,
        stroke: (0.5pt + stroke-color),
      )
      #show table.cell.where(y: 0): it => {smallcaps(strong(it))}
      
      
      #table(
        columns: (10em, auto, auto),
        stroke: (x, y) => (bottom: 1pt),
        table.header([Member], [Role], [Tasks]),
        [Aleksandr Cherkasov], [Backend], [ 
          - Built REST API with Django REST Framework
          -  Defined serializers, viewsets & routes
          -  Refactored endpoints for REST compliance
          -  Added and fixed API tests
        ],
        [Almir Avkhadiev], [Backend, QA], [
           - Updated Docker Compose for services
           - Created Postman collections
           - Wrote integration & tests
           - Resolved migrations & deployment issues
           - Verified CORS & auth flows
        ],
        [Anton Bugaev], [Frontend], [
         - Initialized React + TypeScript
         - Implemented ActivityList page
         - Fixed client-side filtering
         - Applied responsive Tailwind CSS
         - Optimized bundle with code splitting
        ],
        [Dmitriy Ezovskikh], [Frontend], [
          - Built Assignment2 document
          - Added code splitting & lazy loading
          - Ensured accessibility & performance
        ],
        [Timur Daminov], [Team-Lead, \ Frontend], [
          - Led API & React code reviews
          - Configured CI/CD in GitHub Actions
          - Designed UI
        ]
      )
    ]
  ],
  external-link-circle: false,
  chapter-pagebreak: false
)

// = Links

// == User Stories
// #v(1em)
// #box(height:90%, inset: -1.2em)[
//   #rotate(
//   -90deg,
//   reflow: true,
  
//   table(
//     columns: 3,
//     rows: 16,
//     inset: 5pt,
//     align: (center + horizon, center + horizon, left),
//     table.header([Features List], [	User Story ID],	[User Story]),
//     [Authentication], [CL-1], [As a student I want to be able to login into sport website using my university account, so the login system is consistent for all IU services.],
//     table.cell(rowspan: 4, [Training details]), [CL-2], [As a user I want to be able to see my current sport hours amount and how much I have to earn by the end of the semester.],
//     [CL-3], [As a user I want to be able to see my previous semesters sport results (amount of hours and fitness test result), so I can measure my training efficiency.],
//     [CL-4], [As a user I want to have an ability to see the location, time of the training and the teacher name, so I can plan my time according to this information.],
//     [CL-5], [As a user I want to be able to see the amount of students who are already checked in, so I understand if the training will be crowded or not.],
//     [Training check in], [CL-6], [As a user I want to be able to conviniently check-in in the training online, so I don't waste my time doing it offline.],
//     table.cell(rowspan: 2, [Aesthetic and UI]), [CL-7], [As a student, I want to have the same design as in InNoHassle, so the UI feels consistent with other Innopolis University services.],
//     [CL-8], [As a user, I want the sport website to load correctly and quickly both on PC and mobile phone.],
//     table.cell(rowspan: 7, [Features]), [CL-9],[As a user, I want to be able to expand or hide list that shows overall sport hours for each semester so the website is more compact and more convenient to use],
//     [CL-10], [As a user, I want to have FAQ section which contains information about sport hours, medickal check-up, debts, self-sport reports and fitness tests. Therefore, I can  quickly access useful information by myself and without taking trainers time.],
//     [CL-11], [As a student, I want to be able to submit medical reference online on the sport website, so the process of getting the health group is quick and simple.],
//     [CL-12], [As a student, I want to be able to change my medical group if I think it is necessary.],
//     [CL-13], [As a student, I want to be able to submit medical reference if I'm ill and can't do sport.],
//     [CL-14], [As a student, I want to see my medical group and know what trainings I can attend.],
//     [CL-15], [As a student, I want to be able to see the percent of the students who have less sport hours than me, so I can measure if I earn sport hours fast enough.],
    
//   )
// )
// ]
// // #link("https://docs.google.com/spreadsheets/d/1vHTyspdfpMvbwBI94hNW0t3B-m0OEk5FNH3kPBg5Ptk/edit?gid=452702113#gid=452702113")

// == Use Case Diagram
// #figure(
//   box(stroke: 1.5pt + gray, inset: 17.5pt, radius: 15pt)[#image("assets/usecase.png", )],
//   gap: 1em,
//   caption: [Use case diagram.],
// )
// // #link("https://drive.google.com/file/d/1TuW6DKRpE9gWjZ3WTKsTlIuIG02JUx21/view?usp=sharing")

// == Github
// #link("https://github.com/daminow/sportSite")

// == Figma UI Prototype
// #link("https://www.figma.com/design/PyaIBlw0FzgBOWt5v3SIlR/SportSite?node-id=0-1&t=QlW4deLPqXzDcA8K-1")

// == Postman API Mock
// #link("https://www.postman.com/aleksandr-9130056/aleksandr-s-workspace/collection/p6qz9oq/assignment-2?action=share&creator=45906581")
// == MVP v0 Deployment
// #link("http://t9d.store")

// == Activity Tracking Sheet
// #link("https://docs.google.com/spreadsheets/d/1ypYbCADkfxVgNzAq-gO7kT-pW7p-oiTCVQeEuyUSIKg/edit?gid=1793499882#gid=1793499882")

// #pagebreak()
// = Customer feedback summary
// A review was conducted with the members of one-zero-eight Artem Bulgakov and Ruslan Belkov.
// At first we talked about user stories, the customers agreed with them. Then, we showed the figma prototype of the UI design. The customers appreciated the design and that it complies with the InNoHassle design. Furthermore, we showed the Postman API mock, which were also approved by the customers. The link to the deployed MVP v0 were shared with the customer. We concluded, that our current MVP versions roadmap is appropriate and no significant changes were required.

// = AI usage
// No AI were used in this assignment.







= Functionality of the product

== Use Case Diagram
#figure(
  box(stroke: 1.5pt + gray, inset: 17.5pt, radius: 15pt)[#image("assets/usecase.png", )],
  gap: 1em,
  caption: [Use case diagram.],
)

== User Stories
#v(1em)
#box(height:90%, inset: -1.2em)[
  #rotate(
  -90deg,
  reflow: true,
  
  table(
    columns: 3,
    rows: 16,
    inset: 5pt,
    align: (center + horizon, center + horizon, left),
    table.header([Features List], [	User Story ID],	[User Story]),
    [Authentication], [CL-1], [As a student I want to be able to login into sport website using my university account, so the login system is consistent for all IU services.],
    table.cell(rowspan: 4, [Training details]), [CL-2], [As a user I want to be able to see my current sport hours amount and how much I have to earn by the end of the semester.],
    [CL-3], [As a user I want to be able to see my previous semesters sport results (amount of hours and fitness test result), so I can measure my training efficiency.],
    [CL-4], [As a user I want to have an ability to see the location, time of the training and the teacher name, so I can plan my time according to this information.],
    [CL-5], [As a user I want to be able to see the amount of students who are already checked in, so I understand if the training will be crowded or not.],
    [Training check in], [CL-6], [As a user I want to be able to conviniently check-in in the training online, so I don't waste my time doing it offline.],
    table.cell(rowspan: 2, [Aesthetic and UI]), [CL-7], [As a student, I want to have the same design as in InNoHassle, so the UI feels consistent with other Innopolis University services.],
    [CL-8], [As a user, I want the sport website to load correctly and quickly both on PC and mobile phone.],
    table.cell(rowspan: 7, [Features]), [CL-9],[As a user, I want to be able to expand or hide list that shows overall sport hours for each semester so the website is more compact and more convenient to use],
    [CL-10], [As a user, I want to have FAQ section which contains information about sport hours, medickal check-up, debts, self-sport reports and fitness tests. Therefore, I can  quickly access useful information by myself and without taking trainers time.],
    [CL-11], [As a student, I want to be able to submit medical reference online on the sport website, so the process of getting the health group is quick and simple.],
    [CL-12], [As a student, I want to be able to change my medical group if I think it is necessary.],
    [CL-13], [As a student, I want to be able to submit medical reference if I'm ill and can't do sport.],
    [CL-14], [As a student, I want to see my medical group and know what trainings I can attend.],
    [CL-15], [As a student, I want to be able to see the percent of the students who have less sport hours than me, so I can measure if I earn sport hours fast enough.],
    
  )
)
]
// #link("https://docs.google.com/spreadsheets/d/1vHTyspdfpMvbwBI94hNW0t3B-m0OEk5FNH3kPBg5Ptk/edit?gid=452702113#gid=452702113")

= DEEP Product Backlog

== Github Repository
#link("https://github.com/daminow/sportSite")

== Backlog
#link("https://github.com/daminow/sport/issues")

#v(.8em)

= Design of the App

== Figma UI Prototype
#link("https://www.figma.com/design/PyaIBlw0FzgBOWt5v3SIlR/SportSite?node-id=0-1&t=QlW4deLPqXzDcA8K-1")

== Postman API Mock
#link("https://www.postman.com/aleksandr-9130056/aleksandr-s-workspace/collection/p6qz9oq/assignment-2?action=share&creator=45906581")

#v(.8em)

= MVP v0 Deployment
#link("http://t9d.store")

#v(.8em)

= Activity Tracking Sheet
#link("https://docs.google.com/spreadsheets/d/1ypYbCADkfxVgNzAq-gO7kT-pW7p-oiTCVQeEuyUSIKg/edit?gid=1793499882#gid=1793499882")

#v(.8em)

= Review with the Customer
A review was conducted with the members of one-zero-eight Artem Bulgakov and Ruslan Belkov.
At first we talked about user stories, the customers agreed with them. Then, we showed the figma prototype of the UI design. The customers appreciated the design and that it complies with the InNoHassle design. Furthermore, we showed the Postman API mock, which were also approved by the customers. The link to the deployed MVP v0 were shared with the customer. We concluded, that our current MVP versions roadmap is appropriate and no significant changes were required.

#v(.8em)

= AI usage
No AI were used in this assignment.
