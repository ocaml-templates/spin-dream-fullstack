<h1 align="center">spin-dream</h1>

<p align="center">
  <a href="https://github.com/tmattio/spin">Spin</a> generator for <a href="https://github.com/aantron/dream">Dream</a> applications.
</p>

<br>

<p align="center">
  <img src="https://raw.githubusercontent.com/ocaml-templates/spin-dream/main/demo.png" alt="Demo" />
</p>


```bash
opam spin new https://github.com/tmattio/spin-dream.git
```

You can see a generated project with the minimal setup in the [`example/`](example/) directory.

## What's included

- [X] Live reloading on file system change with [`dream-livereload`](https://github.com/tmattio/dream-livereload)
- [X] A project structure with a clear separation of concerns
  - `lib/<project>` contains the business logic and storage access
  - `lib/<project>_web` contains the API definition
  - `lib/<project>_app` contains an (optional) JavaScript application sent to clients
- [X] Welcome page with a portal to Dream's ecosystem
- [X] [TailwindCSS](https://tailwindcss.com/) integrated with Dune
- [X] [Inter fonts](https://rsms.me/inter/) configured with TailwindCSS
- [X] Unit tests suite with [Alcotest](https://github.com/mirage/alcotest)
- [X] [Turbolink](https://github.com/turbolinks/turbolinks) setup
- [X] CLI to configure server settings at runtime with [`dream-cli`](https://github.com/tmattio/dream-cli)

## Requirements

- TailwindCSS requires NodeJS 12.13 or higher. If your system uses a previous version of NodeJS, we recommend using [`nvm`](https://github.com/nvm-sh/nvm) to install a newer version.
  ```bash
  # Install NVM
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
  # Reload bash
  source ~/.bashrc
  # Install an NPM version, 14 is the latest LTS
  nvm install 14
  # Use the version in your current prompt
  nvm use 14
  ```


## To Do

- [ ] Add Caqti examples
- [ ] Skip crunch in development

## Acknowledgments

- Welcome page design borrowed from TailwindCSS playground
- Turbolink setup borrowed from Haskell's IHP
- Directory structure heavily inspired by Elixir's Phoenix
