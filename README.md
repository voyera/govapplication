= Government application app

Primary goal is to store questions/answers to government applications. 

Also we need to allow people to register easily (Devise + OmniAuth (fb, google)).

Easily search through existing questions/aswers.

= Technical requirements:

* Ruby version 2.1.1.p76
* Rails version 4.2.0.beta2

= Rails gems:

* Development
* * Faker (for testing)

* Prod
* * Devise
* * Heroku gems (will_paginate)

= Todo

* IL18n (translation fr)
* Render error messages with rails ( http://stackoverflow.com/questions/13924650/render-error-messages-with-js-form-rails )

= Done

* Implement Devise
* Build seed data for testing
* Search field (concatenate title + content and removes accents ( foo.mb_chars.normalize(:kd).gsub(/[^\x00-\x7F]/n,'').to_s )) 
* Add form to add items (When adding items, ensure that the field "search"  is populate automatically 
* Devises flash alert styling
* Add controller/model for items (title / content ) with create/edit/destroy
* * Style the list of items
* Add Edit and Delete buttons when user mouse over one item
* Add remote:true + javascript for delete button
* Add code to make edit button work (hide text, show edit form)
* Add remote:true for edit form, and make it work
* Add remote:true for add form, and make it work
* Make turbolinks not screw up jquery document ready scripts
* Add Mangrill support for emails
* Add search feature ( http://railscasts.com/episodes/240-search-sort-paginate-with-ajax?autoplay=true )
* Test Mandrill emails
* Make migration on heroku work