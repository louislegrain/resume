#import "@preview/typographic-resume:0.1.0": *

#let section = (theme: (:), ..args) => {
  section(
    theme: (
      align-title: left,
      ..theme,
    ),
    ..args,
  )
}

#let work-entry = (theme: (:), ..args) => {
  set line(stroke: rgb("#bfbfbf"))
  work-entry(
    theme: (
      space-above: 20pt,
      ..theme,
    ),
    ..args,
  )
}

#let education-entry = (theme: (:), ..args) => {
  set line(stroke: rgb("#bfbfbf"))
  if "space-above" not in theme {
    v(20pt)
  } else {
    v(theme.space-above)
  }
  education-entry(theme: theme, ..args)
}

// To learn about theming, see https://github.com/tsnobip/typst-typographic-resume?tab=readme-ov-file#theme
// make sure you have installed the fonts you want to use
#show: resume.with(
  theme: (
    // margin: 26pt,
    // font: "Libre Baskerville",
    // font-size: 8pt,
    // font-secondary: "Roboto",
    // font-tertiary: "Montserrat",
    // text-color: rgb("#3f454d"),
    // gutter-size: 4em,
    // main-width: 6fr,
    // aside-width: 3fr,
    // profile-picture-width: 55%,
  ),
  first-name: "Louis",
  last-name: "Legrain",
  profession: "Student",
  bio: [
    Curious, committed and driven by an entrepreneurial spirit, I've always had a passion for computers and machines of all kinds.

    Self-taught, I continuously expand my skills through online learning and hands-on projects.
  ],
  profile-picture: {
    set block(above: 20pt, below: 20pt)
    image("./assets/profile_picture.jpg")
  }, // provide a profile picture here
  aside: {
    section("Tech Stack", {
      set text(font: "Roboto", size: 8pt)
      stack(
        spacing: 8pt,
        "Python",
        "JavaScript",
        "React",
        "PHP",
        "MySQL",
        "MongoDB",
        "C/C++",
        "Docker",
      )
    })

    section("Languages", {
      language-entry("French", "Native")
      language-entry("English", "Fluent")
      language-entry("Spanish", "Conversational")
    })

    section("Interests", {
      set text(font: "Roboto", size: 8pt)
      stack(
        spacing: 8pt,
        "Computer science",
        "Traveling",
      )
    })

    section("Contact", {
      set image(width: 8pt)
      contact-entry(phone-icon, link(
        "tel:+33 7 61 60 64 95",
        "+33 7 61 60 64 95",
      ))
      line(stroke: default-theme.text-color + 0.1pt, length: 100%)
      contact-entry(email-icon, link(
        "mailto:contact@louislegrain.online",
        "contact@louislegrain.online",
      ))
    })
  },
)


#section(
  theme: (
    space-above: 30pt,
  ),
  "Work Experiences",
  {
    work-entry(
      theme: (
        space-above: 0pt,
      ),
      timeframe: "2024",
      title: "Intern",
      organization: "L'Oréal",
      location: "Paris, FR",
      [
        A two-month internship, working on L'OréalGPT, the company's internal AI assistant, as an AI engineer.
      ],
    )
    work-entry(
      timeframe: "2022 - Today",
      title: "Founder",
      organization: "Vinted Copilot",
      [
        Creation of my SaaS, a real-time tracking service for Vinted items, used by 100k+ users.
      ],
    )
    work-entry(
      timeframe: "2021 - 2022",
      title: "Software engineer",
      organization: "Fiverr",
      location: "Remote",
      [
        Tailor-made services: creation of websites and programs for the platform's customers. \
        I delivered 20+ orders, maintaining a 4.9/5 client satisfaction rating.
      ],
    )
  },
)

#section(
  "Volunteer Experiences",
  {
    work-entry(
      theme: (
        space-above: 0pt,
      ),
      timeframe: "2021",
      title: "Software engineer",
      organization: "Sainte-Geneviève's mini-company",
      location: "Paris, FR",
      [
        Creation of a video game to raise awareness about cancer, and raise funds for a cancer charity.
      ],
    )
    work-entry(
      timeframe: "2020",
      title: "Web developer",
      organization: "Hope",
      location: "Paris, FR",
      [
        Designed and built a website for Hope, a non-profit organization helping children with disabilities through sports.
      ],
    )
  },
)

#section(
  "Education",
  {
    education-entry(
      theme: (
        space-above: 0pt,
      ),
      title: "Bachelor of Science",
      institution: "École Polytechnique, FR",
      timeframe: "2023 - 2026",
      [Double major in Mathematics & Computer Science],
    )
    education-entry(
      title: "High School",
      institution: "Lycée Sainte-Geneviève d'Asnières, FR",
      timeframe: "2020 - 2023",
      [Teaching of Maths, Physics-Chemistry and CS specialties with Expert Maths option],
    )
  },
)

#section(
  "Personal Experiences",
  {
    education-entry(
      theme: (
        space-above: 0pt,
      ),
      title: "Family Road Trip",
      institution: "South America",
      timeframe: "2018",
      [6 months of travel through South America (Chile, Argentina, Bolivia, Peru, Ecuador, Colombia)],
    )
  },
)
