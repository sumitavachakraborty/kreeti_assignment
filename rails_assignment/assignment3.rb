[Question 1] Explain has many and belongs to association between models.

[Answer - ]
has many association is one to many connections type here each instance of
the model has zero or more association to the other model.

belongs to association is each instance of one model has one instance of 
the other model.



[Question 2] Write two models having belongs_to migration, and the query to call.

[Answer - ]

class CreateShop < ActiveRecord::Migration[6.0]
    def change
        create_table :shop do |t|
            t.string :shop_name
            t.string :id
            t.timestamps
        end
    end
end


class CreateProducts < ActiveRecord::Migration[6.0]
    def change
        create_table :products do |t|
            t.string :name
            t.string :type
            t.string :price
            t.references :shop, null: false, foreign_key: true
            t.timestamps
        end
    end
end


class Person < ApplicationRecord
    has_many :products
end

class Pet < ApplicationRecord
    belongs_to :shop
end


[Question 3] Can we use different class name in model, if yes then how?

[Answer - ]
Yes we can use 

class Product < ApplicationRecord
    class_name: "ShopProducts"
end
