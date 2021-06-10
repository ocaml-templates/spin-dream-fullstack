let loader _root path _request =
  match Asset.read path with
  | None ->
    Dream.empty `Not_Found
  | Some asset ->
    Dream.respond asset

let routes =
  [ Dream.get "/" Page_handler.index
  {% if include_embedded_js == "true" %}
  ; Dream.get "/app" Page_handler.app
  {% endif %}
  ; Dream.get "/assets/**" (Dream.static ~loader "")
  ]

let router = Dream.router routes
