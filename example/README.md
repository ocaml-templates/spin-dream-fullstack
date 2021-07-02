# Demo

[![Actions Status](https://github.com/tmattio/demo/workflows/CI/badge.svg)](https://github.com/tmattio/demo/actions)

A short, but powerful statement about your project

## Setup your development environment

You need Opam, you can install it by following [Opam's documentation](https://opam.ocaml.org/doc/Install.html).

With Opam installed, you can install the dependencies in a new local switch with:

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

### Running Tests

You can run the unit tests suites with:

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

### Repository Structure

The following snippet describes Demo's repository structure.

```text
.
├── bin/
|   Source for demo's binary. This links to the library defined in `lib/`.
│
├── lib/
|   Source for Demo's library. Contains Demo's core functionnalities.
│
├── test/
|   Unit tests and integration tests for Demo.
│
├── dune-project
|   Dune file used to mark the root of the project and define project-wide parameters.
|   For the documentation of the syntax, see https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
│
├── LICENSE
│
├── Makefile
|   Make file containing common development command.
│
├── README.md
│
└── demo.opam
    Opam package definition.
    To know more about creating and publishing opam packages, see https://opam.ocaml.org/doc/Packaging.html.
```