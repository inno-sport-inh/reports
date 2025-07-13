#import "ilm/lib.typ": *

#set text(
  lang: "en", 
  font: "Libertinus Serif"
)

#show link: set text(hyphenate: true, fill: blue)
#show link: underline

#show table.cell.where(y: 0): it => { smallcaps(strong(it)) }

#show: ilm.with(
  title: [Assignment 3. \ Sprint, Git Workflow, MVP v1 & Presentation],
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
          - Git management
          - API v2 delepopment
        ],
        [Almir Avkhadiev], [Backend, \ QA, \ DevOps Engineer], [
          - Assignment 3 preparation
          - Sport site admin panel and frontend of the new site version deployment on the VM
          - Github management
          - SSO authorization
        ],
        [Anton Bugaev], [Frontend], [
          - Led the development of the v2 frontend
        ],
        [Dmitriy Ezovskikh], [Fullstack], [
          - Assignment 3 preparation
          - Developed API v2 improvements
        ],
        [Timur Daminov], [Team-Lead, \ Fullstack], [
          - Meeting with the customer
          - Developed several frontend features
        ]
      )
    ]
  ],
  // bibliography: bibliography("refs.yml", title: [References]),
  external-link-circle: false,
  chapter-pagebreak: false
)

#set enum(numbering: "1.", indent: 8pt)
#set list(indent: 8pt)
#pagebreak()

// == Figure
// docs: #link("https://typst.app/docs/reference/model/figure") \

// #figure(
//   box(stroke: 1.5pt + gray, inset: 17.5pt, radius: 15pt)[#image("assets/usecase.png", )],
//   gap: 1em,
//   caption: [Use case diagram.],
// )

// ============================

= Definition of Done
+ Code is written and committed to the github
+ Code is approved by another members (or at least 1)
+ No critical bugs
+ Task is moved to the "Done" section in the kanban board
+ Acceptance criteria is completed

= Github repository
#link("https://github.com/inno-sport-inh")

== Story points table
#link("https://github.com/orgs/inno-sport-inh/projects/5/views/1")

== Kanban board
#link("https://github.com/orgs/inno-sport-inh/projects/1/views/1")

== Milestones
The project is being developed in different repositories, but the milestone is the same for each repository. Each part of the development has its own thematic issues. Below are links for the milestone:
+ #link("https://github.com/inno-sport-inh/frontend/milestone/1")
+ #link("https://github.com/inno-sport-inh/backend/milestone/1")

= Story points tracking sheet
#link("https://docs.google.com/spreadsheets/d/1gCACS5LkCOjsXijKPbO_xkv4q1_KrqgI3_VfKA2161Q/edit?usp=sharing")

= Report on the sprint retrospective
#table(
  columns: 3,
  align: left,
  table.header[What went well][What wasn't good][What we will change],
  [Team collaboration was effective.], [A few tasks were unclear, clarification from the customer was required.], [The team collaboration greatly simplified the work, so we will try to split tasks between each other even more often and evenly.],
  [Task were completed on time by the end of the sprint.], [Several tasks were dependent on others. So we faced workflow bottlenecks.], [We will try to start dependency-heavy tasks earlier to reduce bottlenecks.],
  [Consistent daily communication.], [The definition of done was created only in the end of the spirnt.], [We will apply new DoD to all tasks.],
)

= Git workflow process
+ We work with two repositories. "backend" and "frontend". We will merge them when the connection will be required.
+ Each repository has branches dedicated for one or several issues.
+ After the issue is solved, we create a merge request targeted on main branch.
+ Each merge request is reviewed by one ore more team members.

= Deployment MVP v1
Admin panel of the main sport site: #link("https://t9d.store") \
user mail: `test@t9d.store` \
user password: `roLouL*6Ei8J` \ \
New front of the sport site: #link("https://frontend-fawn-six-66.vercel.app")

= Presentation slides
#link("https://disk.yandex.ru/i/qfCaICy8GFVwBQ")

= Customer meeting and delivering MVP v1

== Recording of the customer testing

#link("https://disk.yandex.ru/i/WSqdQLdUPpxT7g")

== Key Feedback

#smallcaps[*Frontend*]
- The frontend looks excellent — clean, responsive, and intuitive.
- Great job on delivering a user-friendly interface that matches the intended experience.
- However, the pages need to be integrated into the main innohassle codebase.

#smallcaps[*Backend*]
- During the discussion, the most critical pain points and architectural issues were identified.
- Refactoring of the existing API has been initiated to improve structure, maintainability, and performance.
- General backend optimization efforts are also underway, aiming to streamline data flow and reduce technical debt.
- Further iterations will focus on addressing bottlenecks and aligning the API more closely with frontend needs.

= Retrospective from Assignment 2

Remark about task statuses was taken in consideration. We organised the kanbad board where we will track which tasks are currently in the backlog, which are in progress, and which are completed (according to DoD)

#pagebreak()
= The summary of the current progress
Currently, basic frontend is made and we started the work on backend refining. Our next steps include:
- Make the backend structure simpler and clearer.
- Write endpoints in the rest api style.
- Implement new features based on feedback and expand system capabilities.

= AI usage

AI was used only to refactor some text.
