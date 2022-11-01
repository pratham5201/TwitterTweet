<% if user_signed_in? %>
  <li><%=link_to 'Sign out', destroy_user_session_path, class:"dropdown-item", data: { turbo_method: :delete } %></li>
<% else%>
  <li><%=link_to 'Sign In', new_user_session_path, class:"dropdown-item"%></li>
<% end%>



<strong><%= tweet.user.user_name %></strong>
    <%= tweet.tweet %><br>
    <%= link_to "Show", tweet %>||
    <%= link_to "Edit", edit_tweet_path(tweet) %>||
    <%= link_to "delete", @tweet, data: { turbo_method: :delete, turbo_confirm: "Are you sure?" } %><br>
