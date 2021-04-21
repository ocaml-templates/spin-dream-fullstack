(name dream)
(description "Dream web application")

(config project_name
  (input (prompt "Project name")))

(config project_slug
  (input (prompt "Project slug"))
  (default (slugify :project_name))
  (rules
    ("The project slug must be lowercase and contain ASCII characters and '-' only."
      (eq :project_slug (slugify :project_slug)))))

(config project_snake
  (default (snake_case :project_slug)))

(config create_switch
  (default true))

(config project_description
  (input (prompt "Description"))
  (default "A short, but powerful statement about your project")
  (rules
    ("The last character of the description cannot be a \".\" to comply with Opam"
      (neq . (last_char :project_description)))))

(config author_name
  (input (prompt "Name of the author")))

(config github_username
  (input (prompt "Github username"))
  (default :username))

(config ci_cd
  (select
    (prompt "Which CI/CD do you use?")
    (values Github None))
  (default Github))

(ignore
  (files github/*)
  (enabled_if (neq :ci_cd Github)))

; We need to do this because Dune won't copy .github during build
(post_gen
  (actions
    (run mv github .github))
  (enabled_if (eq :ci_cd Github)))

(post_gen
  (actions
    (run make create_switch)
    (run make deps)
    (run make build)
    (run make lock))
  (message "🎁  Installing packages in a switch. This might take a couple minutes.")
  (enabled_if (eq :create_switch true)))

(post_gen
  (actions
    (run make deps)
    (run make build)
    (run make lock))
  (message "🎁  Installing packages globally. This might take a couple minutes.")
  (enabled_if (eq :create_switch false)))

(example_commands
  (commands
    ("make watch" "Run the server in watch mode.")
    ("make build" "Build the dependencies and the project.")
    ("make deps" "Download runtime and development dependencies.")
    ("make test" "Starts the test runner.")))
