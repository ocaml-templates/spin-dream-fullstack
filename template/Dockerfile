FROM ocaml/opam:alpine as build

# Install system dependencies
RUN sudo apk add --update libev-dev openssl-dev nodejs npm

WORKDIR /home/opam

# Pin Opam dependencies
RUN opam pin -n -y git@github.com:aantron/dream.git
RUN opam pin -n -y git@github.com:tmattio/dream-cli.git
RUN opam pin -n -y git@github.com:tmattio/dream-livereload.git

# Install Opam dependencies
ADD {{ project_slug }}.opam {{ project_slug }}.opam
RUN opam install . --deps-only

# Install NPM dependencies
ADD package.json package.json
RUN npm install

# Build project
ADD asset/ bin/ config/ lib/ dune dune-project ./
RUN opam exec -- dune build

FROM alpine:3.12 as run

RUN apk add --update libev

COPY --from=build /home/opam/_build/default/bin/server.exe /bin/server

ENTRYPOINT /bin/server
