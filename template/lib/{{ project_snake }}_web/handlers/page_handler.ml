let index _req =
  Layout_template.render ~title:"Welcome to Dream!" Index_template.render
  |> Dream.html

{% if include_embedded_js == "true" %}
let app _req =
  Layout_template.render ~title:"Welcome to Dream!" App_template.render
  |> Dream.html
{% endif %}
