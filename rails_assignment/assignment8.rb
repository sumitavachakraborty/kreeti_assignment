# [Q.1 ] What is Session Hijacking and how to counter it in Rails?

## Answer

When the attacker gets access to the session of the user and the controll 
goes to the attacker. The attacker can perform any action on the session
by the users end which can cause unauthorized changes in the wesbite.

We can counter Session Hijacking in Rails by:

By forcing secure connection over SSL in the config folder.
config.force_ssl = true

Providing a log out button to the user so that after session there
is no unauthorized login.



#[Q.2 ]Explain CSRF with an example.

## Ans:

CSRF makes the user to do unwanted actions or commands on the website in 
which they are authenticated.

eg-

Say the user is authenticated to a web app but is browsing some other webpage
which has that malacious command or code. Since the session of his original 
website is still in the browser, the malacious code gets executed and this result 
in unwanted actions by the user which can cause data loss or wrong action in the 
webpage. 



# [Q.3 ] How does SQL Injection happen and what measures should be taken to prevent it in
Rails?

## Answer

To bypass any authorization the attacker can enter malacious code int the database query
which can cause the attacker to gain sensitive information from the database.

To prevent -
We can can sanitize the query array 
sanitize_sql_array(["email = ? AND password >= ?", email,password]))
We should always use parameterized SQL query to seperate sql code and user input
