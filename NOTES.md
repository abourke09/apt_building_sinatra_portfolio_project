**TO-DO**

3.  Prepare a short video demo (narration helps!) describing how a user would interact with your working application.
4.  Write a blog post about the project and process.
5.  When done, submit your GitHub repo's url, a link to your video demo, and a link to your blog post in the corresponding text boxes in the right rail. Hit "I'm done" to wrap it up.

**REQUIREMENTS**
Build an MVC Sinatra Application.
Use ActiveRecord with Sinatra.
Use Multiple Models.
Use at least one has_many relationship on a User model and one belongs_to relationship on another model
Must have user accounts. The user that created a given piece of content should be the only person who can modify that content
Must have the ability to create, read, update and destroy any instance of the resource that belongs to a user.
Ensure that any instance of the resource that belongs to a user can be edited or deleted only by that user.
You should also have validations for user input to ensure that bad data isn't added to the database. The fields in your signup form should be required and the user attribute that is used to login a user should be a unique value in the DB before creating the user.

**important**
Build your application. Make sure to commit early and commit often. Commit messages should be meaningful (clearly describe what you're doing in the commit) and accurate (there should be nothing in the commit that doesn't match the description in the commit message). Good rule of thumb is to commit every 3-7 mins of actual coding time. Most of your commits should have under 15 lines of code and a 2 line commit is perfectly acceptable. This is important and you'll be graded on this.

**Specifications for the Sinatra Assessment**
Specs:

 Use Sinatra to build the app
 Use ActiveRecord for storing information in a database
 Include more than one model class (list of model class names e.g. User, Post, Category)
 Include at least one has_many relationship on your User model (x has_many y, e.g. User has_many Posts)
 Include at least one belongs_to relationship on another model (x belongs_to y, e.g. Post belongs_to User)
 Include user accounts
 Ensure that users can't modify content created by other users
 Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
 Include user input validations
 Display validation failures to user with error message (example form URL e.g. /posts/new)
 Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
Confirm

 You have a large number of small Git commits
 Your commit messages are meaningful
 You made the changes in a commit that relate to the commit message
 You don't include changes in a commit that aren't related to the commit message
