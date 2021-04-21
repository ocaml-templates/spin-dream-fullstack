open Js_of_ocaml

let start () =
  let body = Dom_html.getElementById_exn "body" in
  body##.innerHTML := Js.string "Hello from JavaScript!"
