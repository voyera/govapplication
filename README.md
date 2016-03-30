# Government application app

Primary goal is to store questions/answers to government applications. 

Also we need to allow people to register easily (Devise + OmniAuth (fb, google)).

Easily search through existing questions/aswers.

## Technical requirements:

* Ruby version 2.1.1.p76
* Rails version 4.2.0.beta2

## Rails gems:

* Development
** Faker (for testing)

* Prod
** Devise
** Heroku gems (will_paginate)
** Puma web server
** will_paginate

## Heroku Demo (Feel free to use!)

http://govapplication.herokuapp.com/

## Implementation

Ensure you have the following environment variable set: "SECRET_KEY_BASE" in production.

##Todo

* Render ajax error messages with rails ( http://stackoverflow.com/questions/13924650/render-error-messages-with-js-form-rails )
* Build tests for basic tasks
* Guest cannot add/edit/delete items
* Guest see home page
* Signed in user cannot edit/delete items that aren't his/hers
* Signed in user cannot access other user's item