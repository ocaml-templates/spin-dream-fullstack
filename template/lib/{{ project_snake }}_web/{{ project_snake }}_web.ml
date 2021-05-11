(** Entrypoint to {{ project_name }}' web library. *)

module Handlers = struct
  module Page = Page_handler
end

let run () =
  Dream_cli.run ~debug:Config.debug
  @@ Dream.logger
  @@ Dream_livereload.inject_script ()
  @@ Router.router
  @@ Dream_livereload.router
  @@ Dream.not_found
