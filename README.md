 README


* Ruby version ruby 2.6.3p62 , Rails version - Rails 6.0.2.1

My first ROR home project to try authentication using the bcrypt gem to encrypt my password & flash headers (using different colours).
I followed the guide by Ira Herman. 



Steps:

- Added the bcrypt gem to my Gemfile 

- Added a header for flash messages in Views - set this up in app/views/layouts/application.html.erb

- Sign up - http://localhost:3000/users/new

- Log in/ Log out - http://localhost:3000/login

- Changing state - http://localhost:3000/login - header changes info and nav links based on state.

- Authorization - http://localhost:3000/pages/secret (restrict access to a page)
  

