let render ~title inner =
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <link rel="icon" type="image/png" href="/assets/favicon.ico" />
      <link rel="stylesheet" href="/assets/main.css" />
      <link rel="stylesheet" href="https://rsms.me/inter/inter.css" />
      <script defer type="text/javascript" src="/assets/helpers.js"></script>
      <script defer type="text/javascript" src="/assets/vendor/turbolinks.js"></script>
      <script defer type="text/javascript" src="/assets/vendor/morphdom-umd.min.js"></script>
      <script defer type="text/javascript" src="/assets/vendor/turbolinksMorphdom.js"></script>
      <script defer type="text/javascript" src="/assets/vendor/turbolinksInstantClick.js"></script>
      <title><%s title %></title>
    </head>

    <body class="antialiased">
      <%s! inner %>
    </body>
  </html>
