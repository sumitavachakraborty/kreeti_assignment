[Question 1] What is validation in Rails and how is it used to ensure data integrity?


[Answer - ] 
It is used to check that only valid data are stored in our database. It is used to check for example 
if the email or password that is entered is valid or not before it is saved in the database there are
many type of validation like database level, client level and controller level.
This ensures data intrgrity as only validated data is stored and saved in database.
Example - 
class Person < ApplicationRecord
    validates :id, uniqueness: true
end


[Question 2] How can you add custom validation methods in Rails?

[Answer - ]
class User < ApplicationRecord
    validate :password
  
    def password
      if pincode.present
        errors.add(:password, 'Password must be entered')
      end
    end
end


[Question 3] What is the purpose of callbacks in Rails, and how do they differ from validations?
    
[Answer - ]
Callbacks are methods which are performed in various stages of a active record object life cylce.
callbacks can be used for creating updating and dstroying active records.
example : -

class Task < ApplicationRecord
  
  before_validation :name_set
  validates :name, presence: true 

  private
    def name_set
      self.name = "create new name"
    end
end

Callbacks are used to validate data but validation is used to check data before saving and storing in 
database before certain events occurs.


[Question 4] What are the different types of callbacks available in Rails, and when would you
use each one?

[Answer - ]
There are many types of callbacks that are used for validation and in object life cycle.

before_validation
after_validation
before_save
around_save
before_create
around_create
after_create
after_save
after_commit/after_rollback 

these are used before object creation and are executed in the same order.

before_destroy
around_destroy
after_destroy
after_commit/after_rollback

These callbacks are used for destroying the object 


[Question 5]
a. What is the difference between new and create keywords while creating new
records?

b. If a record is saved with option validate: false then are callbacks
triggered? (Yes / No)


[Answer - ]

a - new is used to create a new object in the memory but doesnot saves it, while
create is used to create as well as save in database.

b - callbacks will still be triggered since callback-false is not declared,
but the record will get stored in database and saved without validation.



[Question 6]
Consider a model (class inheriting ApplicationRecord) named Truck with
attributes owner_name, wheel_count, max_speed, having the following
restrictions:

- owner_name should be unique (irrespective of case) with maximum
character length of 60

- wheel_count should be either 4, 6, 8 or 10.

- max_speed should be within limit [80, 200] (both inclusive)

Write validation statements for the same within the class definition and include
appropriate error messages for the same. Also, write an appropriate callback
which, after a new Truck record is successfully created, prints “A truck with
<wheel_count> is coming on roads soon.” (Replace <wheel_count> with the new
truck’s wheel_count value.)


[Answer - ]

class Truck < ApplicationRecord
  
    validates :owner_name, 
    presence: { message: "can't be blank" },
    uniqueness: { case_sensitive: false, message: "not unique" },
    length: { maximum: 60, message: "#{owner_name} is long limit is 60 characters)" }
  
    validates :wheel_count, 
    inclusion: { in: [4, 6, 8, 10], message: "must be 4, 6, 8 or 10" }
  
    validates :max_speed, 
    numericality: { greater_than_or_equal_to: 80, less_than_or_equal_to: 200, message: "ranghe must be between 80 and 200" }
  
    after_create :welcome_message
  
    def welcome_message
      puts "A truck with #{wheel_count} wheels is coming on roads soon."
    end
  end