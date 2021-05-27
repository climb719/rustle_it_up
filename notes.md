Rustle Up App

Models:
Recipe * join table joining categories and users
- belongs_to a user
- has_many comments
- has_many :users, through :comments

-belogs_to :category 
- name 
- description
- time

Ingredients
- name 

Categories
- name
- has_many recipes
- has_many :users, through: :recipes 

User 
- has_many recipes
- has_many :comments
- has_many :recipe_comments, through: : recipes
- has_many :categories, through: :recipes 
- name
- email
- password_digest

Comment * join table joining users and recipes
- belongs_to user 
- belongs_to recipe 
- content 


- Comment can be Join Table - many to many relationship + one additional attribute
- category can be " " 

