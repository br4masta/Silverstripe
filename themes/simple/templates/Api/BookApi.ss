<% if $BooksList %>
    <% loop $BooksList %>
        <h2>$Title</h2>
        <p>Author: $Author</p>
        <p>Price: $Price</p>
    <% end_loop %>
<% else %>
    <p>No books available.</p>
<% end_if %>
