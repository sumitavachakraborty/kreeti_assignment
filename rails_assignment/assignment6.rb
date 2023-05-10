[Q.1 ] What are enums and when it should be used?

[Answer - ]

Enums are used for declaring named variables and are defined in models for making 
association with databse by symbolic values.

class Product < ApplicationRecord
    enum status: [ :active, :archived ]
end

here product has enum for staus having values active and archived.


[Q.2 ]Why locking records is required and what is pessimistic and optimistic locking?

[Ans : ]

Locking is used so that no two database transactions interfare each other so that data 
inconsistency does not occur and two transactions cannot modify the database at the same
time. 

pessimistic locking is locking the record the time when any user tries to change or edit 
it so that other users are prevented from accessing the database and no other transactions
can change at same time.

optimistic locking is when all the users edit at the same time and locking is applied 
when the the data is saved in the database. This is done by timestamps which is added 
to the record when the record is created.



[Q.3 ]What is n+1 query problem and what are the ways it can be solved?Explain with example.

[ans : ]

When we want to retrieve a collection of record and again for each of those records its 
associated records are fetch then all the n+1 queries are executed instead of just 2.

@users = User.all
@users.each do |user|
  user.somments
end

In this all the N+1 queries to first get all the users and then for each users it will 
comment.

We can use joins,eager loading or by preloading the records.

Hence, int eager loading we use includes method to get all the users with their comments
in one query.
@users = User.includes(:comments).all
@users.each do |user|
  user.comments
end

In joins also we get the left outer join of the query when we fetch it
@users = User.joins(:comments).all
@users.each do |user|
  user.comments
end

In preload the comments or the queries are preloading in a single query.
@users = User.preload(:comments).all
@users.each do |user|
    user.comments
end


[Q.4 ]For a relation: User has many Transactions
User -> id,name,city,updated_at,created_at
Transaction -> id,type(debit or credit),amount,user_id,created_at,updated_at
	For the above relation:

   1.Write a query to find out the net amount gained(credit-debit) by a user today
   2.Write a query to find out the net amount gained(credit-debit) by a user in the last year.
   3.Write a query to find out which user name had the maximum count of transaction of more than Rs. 2000

[Ans - ]

[1.] 
user = User.find(user_id)
today = user.transactions.where('date(created_at) = ?', Date.today)
credit = today.where(type: 'credit').sum(:amount)
debit = today.where(type: 'debit').sum(:amount)
amount = credit - debit

[2 .]
User.find(user_id).Transactions.where('date(created_at) > ?' 1.year.ago, case: 'credit').sum(:amount)
User.find(user_id).Transactions.where('date(created_at) > ?' 1.year.ago, case: 'debit').sum(:amount)
    
[3 .]
User.joins(:Transactions).where('Transactions.amount > ?', 2000).group(:user_id).order('count(Transactions.id) desc').first.name
    
