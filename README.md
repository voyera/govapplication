== Government application app

Primary goal is to store questions/answers to government applications. 

Also we need to allow people to register easily (Devise + OmniAuth (fb, google)).

Easily search through existing questions/aswers.

=== Technical requirements:

* Ruby version 2.1.1.p76
* Rails version 4.2.0.beta2

==== Rails gems:

* Development
** Faker (for testing)

* Prod
** Devise
** Heroku gems (will_paginate)

=== Todo

* Add remote:true for the add form
* Render error messages with rails ( http://stackoverflow.com/questions/13924650/render-error-messages-with-js-form-rails )
* Style the list of items
* Add jquery click option on the item block that copies the item's content (and shows a layover "copied item, click twice to edit")
* Add jquery double click that ajax shows edit form
* IL18n (translation fr)
* Add search feature ( http://railscasts.com/episodes/240-search-sort-paginate-with-ajax?autoplay=true )

=== Done

* Implement Devise
* Build seed data for testing
* Search field (concatenate title + content and removes accents ( foo.mb_chars.normalize(:kd).gsub(/[^\x00-\x7F]/n,'').to_s )) 
* Add form to add items (When adding items, ensure that the field "search"  is populate automatically 
* Devises flash alert styling
* * Add controller/model for items (title / content ) with create/edit/destroy