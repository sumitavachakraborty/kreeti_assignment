# [Q.1] What is Action Mailer in Rails, and what is its purpose?

## Answer   
We can create and send email messages from our applications easily using mailer
it is type of controller that has classes and views for it.
Its main purpose is to send email notification to users for account change or
activation links , confirmation messages or about passwords.

example -

class CompanyMailer < ApplicationMailer
    default from: "company@gmail.com"
end

# [Q.2 ] How do you configure and use Action Mailer in Rails?

## Answer
We can configure Action Mailer in config/environments/development.rb file.

first we have to generate new mailer

`rails g mailer CompanyMailer`

a new file company_mailer.rb will be created in apps/mailers

then in company_mailer we can write ruby code

class CompanyMailer < ApplicationMailer
    default from: "company@gmail.com"
    def welcome_email
        @user = params[:user]
        mail(to: @user.email, subject: 'signed up succesfully')
    end
end



# [Q.3 ] What is an Active Job in Rails, and how does it relate to Action Mailer?

## Answer

Actions jobs are used to send emails asynchronously in the background, which normally
would take time beacuse we have to generate email and then send it in a request-response
cycle. Action jobs do these taske in background without blocking the main applications.

UserMailer.welcome_email(user).deliver_later

we can use deliver_later to sent the emails in background and not immediately.



# [Q.4 ] Can you give an example of how to use Action Mailer and Action Job to handle
email deliveries in a background job?

## Answer

generate a mailer

rails g mailer CompanyMailer

in the apps/mailers/company_mailer.rb

class CompanyMailer < ApplicationMailer
    def welcome_email(user)
        @user = user
        mail(to: @user.email, subject: 'signed up succesfully')
    end
end

in the views/company_mailer we create a view for it

create a new action job

rails g job loginmessage

class LoginMessage < ApplicationJob
    queue_as :default
    def preform(user)
      CompanyMailer.welcome_email(user).deliver_later
    end
end

then deliver later the message in the background

LoginMessage.perform_later(@user)
