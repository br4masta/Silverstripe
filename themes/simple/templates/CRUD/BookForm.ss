<!DOCTYPE html>
<html>
<head>
	<title>DataTable with SilverStripe-2 Database</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.11.3/b-2.0.1/b-html5-2.0.1/datatables.min.css"/>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.11.3/b-2.0.1/b-html5-2.0.1/datatables.min.js"></script>
	
</head>
<body class="$ClassName.ShortName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
<% include Header %>
<% include SideBar %>



<div class="container" style="display: flex; flex-direction: column;">
    <form method="post" action="$Link/update/?action=update&amp;id=$Book.ID">
        <h1>$BookControllerLink/update/?action=update&amp;id=$Book.ID</h1>
      <div class="mb-3">
        <label for="Title" class="form-label">Title</label>
        <input type="text" class="form-control" id="Title" name="Title" value="$Book.Title" required>
      </div>
      <div class="mb-3">
        <label for="Author" class="form-label">Author</label>
        <input type="text" class="form-control" id="Author" name="Author" value="$Book.Author" required>
      </div>
      <div class="mb-3">
        <label for="Publisher" class="form-label">Publisher</label>
        <input type="text" class="form-control" id="Publisher" name="Publisher" value="$Book.Publisher" required>
      </div>
      <div class="mb-3">
        <label for="PublishedDate" class="form-label">Published Date</label>
        <input type="date" class="form-control" id="PublishedDate" name="PublishedDate" value="$Book.PublishedDate" required>
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








