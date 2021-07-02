let index _req =
  Layout_template.render ~title:"Welcome to Dream!" Index_template.render
  |> Dream.html

