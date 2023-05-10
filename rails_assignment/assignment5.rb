[Q.1] What are resources in routes?

[Answer - ]
We can create route for all the 7 actions of the controller that is 
new,show,index,create,destroy,update,edit 
We can create route for all these actions in a single line

Rails.application.routes.draw do
    resources :people
end

[Q.2 ]Define two model with has_many association and define its route using resources. 

[Answer -]
Class ArticlesController< ApplicationRecords
	has_many :comments
end


class Comment < ApplicationRecords
	belongs_to :article
end

and the routes is - 

Rails.application.routes.draw do
	resources  :article do
		resources  :comment
	end
end

[Q.3 ] Explain collection in routes, with an example.

[Answer - ]

For a group of resources we use collection in the route. No id are required 
in the route.

Rails.application.routes.draw do
    resources :articles do
      collection do
        post :comment
      end
    end
end



[Q.4 ] What is locale in Internationalization?

[Answer - ]

Locale in Internationalization is used for making the application localized, to make it available 
for specific cultural region or language for date format.



[Q.5 ] What does ‘root’ in route declaration mean? Give an example.


[Answer - ]

rooot is the default url which the localhost will start when the rails server
starts.

root “articles#index”

Rails.application.routes.draw do
  root 'home#index'
end


[Q.6 ] How do we provide translation for internationalization? Give an example.

[Answer - ]

We can create a file in config/locales in the yml and we can specify our language which 
can be translated when we use <%= t("message") %> in the view.

