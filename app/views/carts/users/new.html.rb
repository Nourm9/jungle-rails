
<h1>Signup!</h1>

<%= form_for :user, url: '/users' do |f| %>

  Name: <%= f.text_field :name %>
  Email: <%= f.text_field :email %>
  Password: <%= f.password_field :password %>
  Password Confirmation: <%= f.password_field :password_confirmation %>
  <%= f.submit "Submit" %>

<% end %>