# spin-dream

Spin template for [Dream](https://github.com/aantron/dream) application

```bash
opam spin new https://github.com/tmattio/spin-dream.git
```

## What's included

- [X] Live reloading on file system change
- [X] A project structure with a clear separation of concerns
  - `lib/<project>` contains the business logic and storage access
  - `lib/<project>_web` contains the API definition
  - `lib/<project>_app` contains an (optional) JavaScript application sent to clients
- [X] Welcome page with a portal to Dream's ecosystem
- [X] TailwindCSS integrated with Dune
- [X] Inter fonts configured
- [X] Unit tests suite
- [X] Turbolink setup
- [X] CLI to configure server settings at runtime

## To Do

- [ ] Add Caqti examples
- [ ] Skip crunch in development

## Acknowledgments

- Welcome page design borrowed from TailwindCSS playground
- Turbolink setup borrowed from Haskell's IHP
- Directory structure heavily inspired by Elixir's Phoenix
