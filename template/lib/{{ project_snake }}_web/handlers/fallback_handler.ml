let error =
  Dream.error_template (fun debug_dump suggested_response ->
      let status = Dream.status suggested_response in
      let code = Dream.status_to_int status
      and reason = Dream.status_to_string status in
      let body =
        match debug_dump with
        | Some s ->
          let debug_dump = Dream.html_escape s in
          Layout_template.render ~title:reason
          @@ Fallback_template.render_debug ~debug_dump ~code ~reason
        | None ->
          Layout_template.render ~title:reason
          @@ Fallback_template.render ~code ~reason
      in
      suggested_response
      |> Dream.with_header "Content-Type" Dream.text_html
      |> Dream.with_body body
      |> Lwt.return)
