[Q.1] What is a Rails controller and what is its purpose in a Rails application?

[Ans:]

The controller is the medium which handles all the client request and gives required
response . This acts as a medium between the view and the model from which the controller
access the database and provides results which is to be displayed on client side.
The controller gets the input and returns output by processing it.
It has many methods/actions which are mapped to various routes and corresponding
views are generated.



[Q.2 ]How do you define actions and their corresponding views in a Rails controller?


[Ans: ]

class ArticlesController<ApplicationController
	def index
	end
end

The action is the index method which is defined in the controller. Corresponding to the 
get "/articles", to: "articles#index" route and then we declare the view in the app/views
folder and write in the index.html.erb our html code such as <h2>Welcome</h2>
So, Welcome is displayed in the localhost.



[Q.3 ]What is the difference between a render and a redirect_to method in a Rails controller? When would you use each one?


[Ans:]

We use render in the controller to directly use the view action in it. If we use 
render :show then the controller will search in the view of show for any html code 
and will directly apply on the action. We can also directly render html code in the 
controller. 

redirect_to is used to redirect the user to some other url. 



[Q.4 ] What is the purpose of strong parameters in a Rails controller? How do you implement them?

    
[Ans: ]

Strong parameters prevent useless parameters or unauthorised parameters to be passed
in the controller. It provides security to the controller, so any bad request cannot be 
created in the parameter list.

Example:
class ArticlesController < ActionController::Base
    def create
      Article.create(article_params)
    end
    private
    def person_params
        params.require(:article).permit(:name, :email, :password)
    end
end


[Q.5]In this example, we define a private user_params method that whitelists the :name, :email, and :password parameters for the create action. The require method specifies that the :user parameter must be present in the request parameters, and any other parameters will be ignored.
How do you use callbacks in a Rails controller?

[Ans: ]

By callbacks we can give logics before or affter the action for modifying its behavior
By callbakcs we can change method automatically in a controller action lifecycle.

class Task < ApplicationRecord
    before_validation :set_title
    validates :title, presence: true, length: { maximum: 50 }

    private
    def set_title
        self.title = "do something"
    end
  end
  






