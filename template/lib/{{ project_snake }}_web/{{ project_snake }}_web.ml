(** Entrypoint to {{ project_name }}' web library. *)

module Handlers = struct
  module Fallback = Fallback_handler
  module Page = Page_handler
end

let router = Router.router

let run () =
  Dream.run ~error_handler:Fallback_handler.error ~debug:Config.debug
  @@ Dream.logger
  @@ router
  @@ Dream.not_found
