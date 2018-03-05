
Charity Api to use
https://api.data.charitynavigator.org/v2

Basic concept schools run charity drives. Students choose a charity to raise funds for. This organizes the views for the school to see all charties raising money and total. Lists classroom index of students and charties.

define what a guest/user/giver? is create model and migration
    has_many pledges
    has_many comments? through?



Add comment to pledge
  other users can like comment and then it displays higher
  list all comments and pledges for students/1/charity/1
Choose from several pledge amounts and custom amount. Autheniticate as number
Student can edit profile?
Teacher can add user and remove student from profile
  COLOR PALLETTE IDEAS
  background:#a2b9bc
  background:#b2ad7f
  background:#878f99
  background:#6b5b95

Add a nested form to add Pledge and coment for user on a student page. Able to set pledge attriubute anonymous if box checked.

CUrrent pledge button
  <%=  button_to "Pledge $5", pledges_path, {method: 'post', class: "pledge_btn" , params:{pledge:{student_id: @student.id, charity_id: c.id, user_id: current_user, amount: 5} }} %>


CODE I WANT
set @pledge = Pledge.new in student show controller

student show page:
<% @student.charities.each do |c| %>
<%= form_for(@pledge), url: pledges_path, html: {class: "nifty_form"} do |f| %>

** NEED TO SETUP ATTRIBUTES MODELS ETC FOR ANONYMOUS AND COMMENTS
  <%= check_box_tag(:anonymous, "anonymous") %>
  <%= label_tag(:anonymous, "Pledge as Anonymous") %>

  <%= label_tag(:amount, "Other Amount") %>
  <%= number_field(:amount, :amount, min: 0)%>
        <%= hidden_field_tag(:charity_id, c.id, ) %>
        <%= hidden_field_tag(:student_id, @student.id) %>
        <%= hidden_field_tag(:user_id ,current_user) %>
        <%= hidden_field_tag(:amount, "5") %>
  <%= f.submit "Pledge $5" %>
<% end %>
<% end %>


<% @student.charities.each do |c| %>
<%= form_for @pledge, url: pledges_path, html: {class: "nifty_form"} do |f| %>
  <%= hidden_field_tag(:charity_id, c.id, ) %>
  <%= hidden_field_tag(:student_id, @student.id) %>
  <%= hidden_field_tag(:user_id ,current_user) %>
  <%= hidden_field_tag(:amount, "5") %>
  <%= f.submit "Pledge $5" %>
<% end %>
<% end %>
