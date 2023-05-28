	<section class="admin-products-index">

  <header class="page-header">
    <h1>Admin &raquo; All Categories</h1>
  </header>

  <div class="well">
    <%= link_to '+ New Product', [:new, :admin, :product], class: 'btn btn-info' %>
  </div>

  <div class="panel panel-default products">

       <%@categories.each do |category|%>
    <li ><%= category.name %></li>
    <%end%>

  </div>
</section>