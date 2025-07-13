#import "ilm/lib.typ": *

#set text(
  lang: "en", 
  font: "Libertinus Serif"
)

#show link: set text(hyphenate: true, fill: blue)
#show link: underline

#show table.cell.where(y: 0): it => { smallcaps(strong(it)) }

#show: ilm.with(
  title: [Assignment 4.\ Quality Assurance & Automation],
  author: "InnoSport Website, Team 9",
  date: datetime.today(),
  abstract: [
    #box[
      #table(
        columns: (10em, auto, auto),
        stroke: (x, y) => (bottom: 1pt),
        inset: 7pt,
        table.header([Member], [Role], [Tasks]),
        [Aleksandr Cherkasov], [Team-Lead, \ Backend], [ 
          - Project management
          - Backend development
          - Organised meeting with the customer and discussed new features
        ],
        [Almir Avkhadiev], [Backend, QA], [
          - Integration tests
          - Unit tests
          - Git management
        ],
        [Anton Bugaev], [Frontend], [
          - Fixing bugs
          - Implementing new frontend features
        ],
        [Dmitriy Ezovskikh], [Backend], [
          - Assignment 4 preparation \
          - Setting up the linter and tester
          - QA tools analysis
        ],
        [Timur Daminov], [Frontend], [
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

= Sprint milestone
Backend: #link("https://github.com/inno-sport-inh/backend/milestone/2") \
Frontend: #link("https://github.com/inno-sport-inh/frontend/milestone/2")

= Sprint tracking table
#link("https://docs.google.com/spreadsheets/d/1gCACS5LkCOjsXijKPbO_xkv4q1_KrqgI3_VfKA2161Q/edit?usp=sharing")

= Deployment
Admin panel of the main sport site: #link("https://t9d.store") \
user mail: `test@t9d.store` \
user password: `roLouL*6Ei8J` \ \
New front of the sport site: #link("https://frontend-fawn-six-66.vercel.app")

= Demo video (in english) with changes since previous week
#link("https://disk.yandex.ru/i/4fwlmu2YTgAtqg")

= User testing
== Link to the recording of user testing session with the customer
#link("https://disk.yandex.ru/i/68Sf2PpOYJ0Yhg")
== The defined user tests
+ Training check-in
+ Reading the sport club information
+ Using the FAQ section
== Report on the results of user testing
As a result, several improvements were suggested by the customer. Toe make the report more structured and clear, the suggestions will be represented as a list of issues. The same issues can be found on our github. \
Suggestions: \
+ Add confirmation dialog before canceling a training session
+ Add "collapse/expand" button for past days in the weekly schedule (collapsed by default)
+ Merge training time and club name dialogs into one; unify "enroll" and "book activity" terminology
+ Make club cards clickable (link to club page) beyond just the "Learn more" button
+ Allow training enrollment directly from the club page
+ Improve FAQ search (support multi-word queries, typos, etc.)
= QA and Tools
== Research on vailable QA tools
As we use python and React.js, we searched for QA tools for these languages. Here is the results: \
+ Python \
  - pytest
  - unittest
  - coverage.py
  - flake8
+ React.js \
  - Jest
  - ESLint
== List of tools that we used
- Python \
  We used pytest and flake8 (linter). The reason of this choice is because pytest is very easy and scalable, as well as flake8, which is easy to install and outputs nice report in .txt format.
  
- React.js \
  We used Jest for testing, it is the most popular and well documented framework. It is easy to set up too.
  As a linter, we chosed github Super-Linter over ESLint because it requires absolutely no setup. Still, it supports React.js and outputs nice and structured report.

= Tests
- Unit tests: #link("https://github.com/inno-sport-inh/backend/tree/main/adminpage/api-v2/tests/api", [link])
- Integration tests: #link("https://github.com/inno-sport-inh/backend/tree/main/adminpage/api-v2/tests/cruds", [link])

= CI pipeline
Backend: #link("https://github.com/inno-sport-inh/backend/actions") \
Frontend: #link("https://github.com/inno-sport-inh/frontend/actions")

= Testing reports
#link("https://disk.yandex.ru/i/vouzZGDocXhCMQ")

== Linter reports.
Linter reports for python can be found here: \
#link("https://github.com/inno-sport-inh/backend/actions") \
- Under each workflow run, there will be linter-report file attached.
Linter reports for React.js can be found here: \
#link("https://github.com/inno-sport-inh/frontend/actions") \
- Under each workflow run, there will be "lint-and-test" job attached.
- Inside this job, there will be section "Run Super-Linter"
- Inside the "Run Super-Linter" section you can see the linter output, it will contain different sections such as CSS, HTML, GITLEAKS, JAVASCRIPT_STANDART, e.t.c.
   
== Coverage reports.
Python coverage reports can be found here: \
#link("https://github.com/inno-sport-inh/backend/actions")
- Under each workflow run, there will be "Run tests" job attached.
- Inside this job, there will be section "Run tests"
#pagebreak()
- Here, you can see the tester output, at the end of the output you can see how much tests failed and how much passed. Example of the output: \

#box(
  inset: 0.5em,
  fill: luma(97%),
  stroke: purple,
  radius: 4pt,
)[
  ```txt
=========================== short test summary info ============================
FAILED api/tests/api/test_profile.py::ProfileAPITests::test_get_profile - Att...
================== 1 failed, 69 passed, 43 warnings in 32.29s ==================
```
]

React.js coverage reports can be found here: \
#link("https://github.com/inno-sport-inh/frontend/actions")
- Under each workflow run, there will be coverage-report document attached