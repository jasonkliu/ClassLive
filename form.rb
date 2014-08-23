#E-mail, First name, last name, college year

<%= form_tag do %>
  Form contents
<% end %>

<%= password_field_tag(:firstname) %>
<%= password_field_tag(:lastname) %>
<%= password_field_tag(:email) %>


<%= options_for_select([['BK', 1], ['BR', 2], ['CC', 3], 
['DC', 4], ['ES', 5], ['JE', 6], ['MC', 7], ['PC', 8], 
['SY', 9], ['SM', 10], ['TD', 11], ['TC', 12]) %>