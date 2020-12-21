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

user -< recipe
recipe -< recipe_ingredients >- ingredients
user -< allergy >- ingredients

rails g resource allergy user:belongs_to ingredients:belongs_to

Deliverables
Recipe
index––show all recipe instances, with the ability to sort by number of ingredients. You can use a search for this feature (Links to an external site.)
new––ability to create a new recipe and associate it with a particular user. You may want to look into collection select (Links to an external site.)

User
show page for a user. This should include all of the recipes that a user has authored.
The ability to delete a user should also exist

Ingredient
index should show all ingredients, sorted by the number of users allergic to it. For example, if several users are allergic to peanut butter, it should appear higher on the list. You might want to look into ActiveRecord Query Methods (Links to an external site.)
show a particular ingredient. I should be able to see all of the recipes that an ingredient appears in