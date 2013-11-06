<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>CodeBlog | Convert your code snippets to blog</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      {{ scriptLink('/js/html5shiv.js', {type: 'text/javascript'}) }}
      {{ scriptLink('/js/respond.min.js', {type: 'text/javascript'}) }}
    <![endif]-->
    
    {{ styleLink('/css/bootstrap.min.css', {rel:'stylesheet'}) }}
    {{ styleLink('/css/bootstrap-theme.min.css', {rel:'stylesheet'}) }}
    {{ styleLink('/css/bootstrap.flat.css', {rel:'stylesheet'}) }}
    {{ styleLink('/css/style.css', {rel:'stylesheet'}) }}
    
    {{ scriptLink('/js/jquery.min.js', {type: 'text/javascript'}) }}
    {{ scriptLink('/js/core/core.js', {type: 'text/javascript'}) }}
    <!-- {{ scriptLink('/js/models/your_model.js', {type: 'text/javascript'}) }} -->
    {{ scriptLink('/js/config/init.js', {type: 'text/javascript'}) }}

    <!-- The fav and touch icons -->
    <link rel="shortcut icon" href="/img/favicon.png">
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">
  </head>
  <body>    
      {{ yield() }}
  </body>
  {{ scriptLink('/plugins/nicescroll/jquery.nicescroll.min.js', {type: 'text/javascript'}) }}
  {{ scriptLink('/js/bootstrap.min.js', {type: 'text/javascript'}) }}
</html>