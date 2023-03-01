   
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

   <!-- pesan Jika Berhasil-->
        <% if successMessage %>
            <div class="alert alert-success" role="alert">
                $successMessage
            </div>
        <% end_if %>

        <% if pesanHapus %>
            <div class="alert alert-danger" role="alert">
                $pesanHapus
            </div>
        <% end_if %>


   
   <div class="main" role="main">
       <div class="inner typography line">
        <h1>Data Buku</h1>

        <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Add Book
          </button>
<!-- <a href="$Link('add')">$Link('edit')</a> -->
        <% if $Books.TotalItems %>
        <table class="table">
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Publisher</th>
                    <th>Published Date</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <% loop $Books %>
                    <tr>
                        <td>$Title</td>
                        <td>$Author</td>
                        <td>$Publisher</td>
                        <td>$PublishedDate.Nice</td>
                        <td>
                            <a href="book_crud/edit/?action=edit&amp;id=$ID">Edit</a>
                            |
                            <a href="book_crud/delete/?action=delete&amp;id=$ID" onclick="return confirm('Are you sure you want to delete this book?')">Delete</a>
                        </td>
                    </tr>
                <% end_loop %>
            </tbody>
        </table>
    <% else %>
        <p>No books found.</p>
    <% end_if %>
   
    <div class="halaman" style="display: flex; justify-content: space-between;">
        <h1 style="margin-left: auto; margin-right: 20px;">halaman $currentPage dari</h1>
        <h1 class="text-primary">Total page $totalPages</h1>    
    </div>
       </div>
    <% include CRUD/Modal/Modal %>

   </div>
   <% include Footer %>
   
   
   <% require javascript('//code.jquery.com/jquery-3.3.1.min.js') %>
   <% require themedJavascript('script') %>
   
   
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
   
   
   </body>
   </html>
   


   
   



