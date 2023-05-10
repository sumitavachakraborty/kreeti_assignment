#[Q.1 ] What is the role of Layouts and Rendering in Rails?

## Answer

We construct the structure of the webpage through layout, we use 
layout to define the common view template.

Rendering is used to render any data and display it in view.
eg:-
We can render something from controller Article directly in the view.
`render "articles/index"`


#[Q.2] What is the difference between rendering a view and redirecting to another
action in Rails?

## Answer
Rendering is directly viewing the action, no request is sent by the browser.
Redirecting is when we change to another view and the browser request to the 
new action which is to be redirected to.
eg:-
redirect_to action: :index, status: 301

it will redirect to index action with a status code of 301 and index view will 
get rendered.


# [Q.3] How do you use partials in Rails views, and what are some benefits of using
partials? How do you pass variables to partials?
    
## Answer
Through partials we can share one common code or template across multiple views.
eg:-
We keep partials in the shared folder
partial name - _navbar.html.erb , _footer.html.erb

<%= render "shared/navbar" %>
<h1>heroimage</h1>
<p>navlinks</p>
<%= render "shared/footer" %>



# [Q.4 ] What are Action View Form Helpers in Rails, and how do they simplify the process
of creating HTML forms?

## Answer

This is a built in method for form creation very easily with semantic attributes.

<%= form_with model: @article do |form| %>
    <div>
    <%= form.label :title %><br>
    <%= form.text_field :title %>

    <%= f.label :password %>
    <%= f.password_field :password %>
    </div> 
    
    <div>
    <%= form.submit %>
    </div>
<% end %>

We create a form with Article model with a text field and password field.