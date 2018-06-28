Specifications for the Sinatra Assessment
Specs:

X Use Sinatra to build the app
  -Models, views, and controllers set up for my app's buildings/residents/service requests

X Use ActiveRecord for storing information in a database.
  -Migration folder holds migration files to create buildings/residents/service requests. Schema generated.

X Include more than one model class (list of model class names e.g. User, Post, Category)
  -Three models include buildings/residents/service requests.

X Include at least one has_many relationship on your User model (x has_many y, e.g. User has_many Posts)
  -A building has many residents, a resident has many service requests.

X Include at least one belongs_to relationship on another model (x belongs_to y, e.g. Post belongs_to User)
  -A resident belongs to a building, a service request belongs to a resident.

X Include user accounts
  -Each resident has a user account.

X Ensure that users can't modify content created by other users
  -You can only view a resident's homepage and service requests if you are logged in as that specific user.

X Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
  -A resident can create, view, edit, and delete their service requests.

X Include user input validations
  -Validations under the Resident model require input in every field of the signup/login pages, and the username must be unique.

 Display validation failures to user with error message (example form URL e.g. /posts/new)

X Your README.md includes a short description, install instructions, a contributors guide and a link to the license for
 your code

Confirm

X You have a large number of small Git commits

X Your commit messages are meaningful

X You made the changes in a commit that relate to the commit message

X You don't include changes in a commit that aren't related to the commit message
