# [Q.1 ] Explain deep_dup with example

## Answer

deep_dup creates a deep copy of th object. So, any changes which is made in 
the deep_dup object will not be affecting the original object.

example - 

original = { a: { b: 'no change' } }
duplicate = original.deep_dup
duplicate[:a][:b] = 'edited changes'

print -> original # => { a: { b: "no change" }

Here we see that the original object has will not chage if the deep_dup object is 
changed.



# [Q.2 ] What is method delegation and state the advantage of using it.

## Answer

method delegation is used to delegate method call to a different object.

example - 

class User < ApplicationRecord
  has_one :profile
  delegate :name, to: :profile
end

we can access the name using user.name and not user.profile.name



# [Q.3 ] What is class_eval?

## Answer

class_eval is used for evaluating string which is present in ruby code 
We can add method to a class by using eval.



# [Q.4 ] How to add multiple image attachment to a model and write to use it in view?

## Answer

model - 

class Post < ApplicationRecord
    has_many_attached :images
end

controller - 

class PostsController < ApplicationController
    def create
        @post = Post.new(post_params)
  
        if @post.save
            redirect_to @post
        else
            render :new
        end
    end
  
private
    def post
      params.require(:post).permit(:title, :body, images: [])
    end
end
  

in view  

new.html.erb -

<%= form_with(model: @post, local: true) do |f| %>
    <%= f.file_field :images, multiple: true %>
    <%= f.submit %>  
<% end %>

show.html.erb -

<% @post.images.each do |img| %>
    <%= image_tag img %>
<% end %>

