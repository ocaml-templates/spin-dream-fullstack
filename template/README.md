# {{ project_name }}

{%- if ci_cd == 'GitHub' and github_username %}

[![Actions Status](https://github.com/{{ github_username }}/{{ project_slug }}/workflows/CI/badge.svg)](https://github.com/{{ github_username }}/{{ project_slug }}/actions)
{%- endif %}

{%- if project_description %}

{{ project_description }}
{%- endif %}

## Set up your development environment

You need opam. You can install it by following [opam's documentation](https://opam.ocaml.org/doc/Install.html).

With opam installed, you can install the dependencies in a new local switch with:

```bash
make switch
```

Or globally, with:

```bash
make deps
```

Then, build the project with:

```bash
make build
```

### Running the server

After building the project, you can run the server with:

```bash
make start
```

To start the server in watch mode, you can run:

```bash
make watch
```

This will restart the server on filesystem changes and reload the pages automatically.

### Running tests

You can run the unit test suite with:

```bash
make test
```

### Building documentation

Documentation for the libraries in the project can be generated with:

```bash
make doc
```

To serve the documentation:

```bash
make servedoc
```

### Repository structure

The following snippet describes {{ project_name }}'s repository structure.

```text
.
├── bin/
|   Source for {{ project_slug }}'s binary. This links to the library defined in `lib/`.
│
├── lib/
|   Source for {{ project_name }}'s library. Contains {{ project_name }}'s core functionalities.
│
├── test/
|   Unit tests and integration tests for {{ project_name }}.
│
├── dune-project
|   Dune file used to mark the root of the project and define project-wide parameters.
|   For the documentation of the syntax, see https://dune.readthedocs.io/en/stable/dune-files.html#dune-project.
│
├── LICENSE
│
├── Makefile
|   `Makefile` containing common development commands.
│
├── README.md
│
└── {{ project_slug }}.opam
    opam package definition.
    To know more about creating and publishing opam packages, see https://opam.ocaml.org/doc/Packaging.html.
```
