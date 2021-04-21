let index _req =
  Layout_template.render ~title:"Welcome to Dream!" Index_template.render
  |> Dream.html

let app _req =
  Layout_template.render ~title:"Welcome to Dream!" App_template.render
  |> Dream.html
