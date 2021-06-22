# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# Sticking-with-notes-B

User <-Notes-> Category
notes belongs_to :user, :category

User has_many notes, has_many category, through: :notes
Category has_many notes, has_many user, through: :notes

User: name(str)
Category: name(str)
Notes: name(str), description(txt), user_id(int), category_id(int)


