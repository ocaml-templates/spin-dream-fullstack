# spin-dream

Spin template for [Dream](https://github.com/aantron/dream) application

```bash
spin new https://github.com/tmattio/spin-dream.git
```

## What's included

- [X] A project structure with a clear separation of concerns
  - `lib/<project>` contains the business logic and storage access
  - `lib/<project>_web` contains the API definition
  - `lib/<project>_app` contains an (optional) JavaScript application sent to clients
- [X] Welcome page with a portal to Dream's ecosystem
- [X] TailwindCSS integrated with Dune
- [X] Inter fonts configured
- [X] Unit tests suite
- [X] Script to build and restart in watch mode
- [X] Turbolink setup

## To Do

- [ ] Add Caqti examples
- [ ] Skip crunch in development
- [ ] Make the JS app optional
- [ ] Make Turbolink optional
- [ ] Make TailwindCSS and Inter fonts optional

## Acknowledgments

- Welcome page design borrowed from TailwindCSS playground
- Turbolink setup borrowed from Haskell's IHP
- Directory heavily inspired by Elixir's Phoenix
