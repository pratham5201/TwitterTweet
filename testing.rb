<% if user_signed_in? %>
  <li><%=link_to 'Sign out', destroy_user_session_path, class:"dropdown-item", data: { turbo_method: :delete } %></li>
<% else%>
  <li><%=link_to 'Sign In', new_user_session_path, class:"dropdown-item"%></li>
<% end%>
