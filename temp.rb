

<% @posts.each do |post| %>
  
  <h2>
    <%= link_to post.title, post %>
  </h2>
  
  <p>
    <i>
      <%= friendly_date post.created_at %>
    </i>
  </p>

  <p>
    <%= post.body %>
  </p>

  <p>
    <% link_to 'Edit', edit_post_path(post) %>
    <% link_to 'Destroy', post, method: :delete, data: {confirm: 'Are you sure?'} %>
  </p>
  
  <hr>
<% end %>

<br>

<%= link_to 'New Post', new_post_path %>







<%= link_to(url:post_url(@post.id)) do %>

  <p id="notice"><%= notice %></p>