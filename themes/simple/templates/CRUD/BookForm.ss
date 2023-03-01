


   
<!DOCTYPE html>
<!--
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Simple. by Sara (saratusar.com, @saratusar) for Innovatif - an awesome Slovenia-based digital agency (innovatif.com/en)
Change it, enhance it and most importantly enjoy it!
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-->

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
    <% base_tag %>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    $MetaTags(false)
    <!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <% require themedCSS('reset') %>
    <% require themedCSS('typography') %>
    <% require themedCSS('form') %>
    <% require themedCSS('layout') %>
    <% require themedCSS('style') %>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="shortcut icon" href="themes/simple/images/favicon.ico" />
</head>
<body class="$ClassName.ShortName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
<% include Header %>
<% include SideBar %>



<div class="container" style="display: flex; flex-direction: column;">
    <form method="post" action="$Link/update/?action=update&amp;id=$Book.ID">
        <h1>$BookControllerLink/update/?action=update&amp;id=$Book.ID</h1>
      <div class="mb-3">
        <label for="Title" class="form-label">Title</label>
        <input type="text" class="form-control" id="Title" name="Title" value="$Book.Title">
      </div>
      <div class="mb-3">
        <label for="Author" class="form-label">Author</label>
        <input type="text" class="form-control" id="Author" name="Author" value="$Book.Author">
      </div>
      <div class="mb-3">
        <label for="Publisher" class="form-label">Publisher</label>
        <input type="text" class="form-control" id="Publisher" name="Publisher" value="$Book.Publisher">
      </div>
      <div class="mb-3">
        <label for="PublishedDate" class="form-label">Published Date</label>
        <input type="date" class="form-control" id="PublishedDate" name="PublishedDate" value="$Book.PublishedDate">
      </div>
      <div class="simpan">
        <button type="submit" class="btn btn-primary">Simpan</button>
      </div>
    </form>
  </div>
  

<% include Footer %>


<% require javascript('//code.jquery.com/jquery-3.3.1.min.js') %>
<% require themedJavascript('script') %>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>


</body>
</html>








