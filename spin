(name dream)

(description "Dream web application")

(config project_name
  (input (prompt "Project name:")))

(config project_slug
  (input (prompt "Project slug:"))
  (default (slugify :project_name))
  (rules
    ("The project slug must be lowercase and contain ASCII characters and '-' only."
      (eq :project_slug (slugify :project_slug)))))

(config project_snake
  (default (snake_case :project_slug)))

(config create_switch
  (default true))

(config project_description
  (input (prompt "Description:"))
  (default "A short, but powerful statement about your project")
  (rules
    ("The last character of the description cannot be a \".\" to comply with opam"
      (neq . (last_char :project_description)))))

(config author_name
  (input (prompt "Name of the author:")))

(config github_username
  (input (prompt "GitHub username:")))

(config include_docker
  (confirm (prompt "Include Docker setup?"))
  (default false))

(config include_tailwind
  (confirm (prompt "Include TailwindCSS?"))
  (default false))

(config include_embedded_js
  (confirm (prompt "Include embedded JavaScript application?"))
  (default false))

(config include_turbolink
  (confirm (prompt "Include Turbolink?"))
  (default false))

(config ci_cd
  (select
    (prompt "Which CI/CD do you use?")
    (values GitHub None))
  (default GitHub))

(ignore
  (files Dockerfile docker-compose.yml .dockerignore)
  (enabled_if (eq :include_docker false)))

(ignore
  (files asset/helpers.js asset/vendor/*)
  (enabled_if (eq :include_turbolink false)))

(ignore
  (files asset/main.css)
  (enabled_if (eq :include_tailwind true)))


(ignore
  (files tailwind.config.js package.json)
  (enabled_if (eq :include_tailwind false)))

(ignore
  (files bin/app.ml bin/app.mli lib/*/templates/app_template.eml lib/*_app/*)
  (enabled_if (eq :include_embedded_js false)))

(ignore
  (files github/*)
  (enabled_if (neq :ci_cd GitHub)))

; We need to do this because Dune won't copy .github during build
(post_gen
  (actions
    (run mv github .github))
  (enabled_if (eq :ci_cd GitHub)))

(post_gen
  (actions
    (run make create_switch)
    (run make deps)
    (run make build)
    (run chmod +x script/watch.sh))
  (message "🎁  Installing packages in a switch. This might take a couple minutes.")
  (enabled_if (eq :create_switch true)))

(post_gen
  (actions
    (run make deps)
    (run make build)
    (run chmod +x script/watch.sh))
  (message "🎁  Installing packages globally. This might take a couple minutes.")
  (enabled_if (eq :create_switch false)))

(example_commands
  (commands
    ("make watch" "Run the server in watch mode.")
    ("make build" "Build the dependencies and the project.")
    ("make deps" "Download runtime and development dependencies.")
    ("make test" "Starts the test runner.")))
