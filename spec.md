# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database - All of the configuration for ActiveRecord enabled just as we have been donig the entire course.

- [x] Include more than one model class (e.g. User, Post, Category) - Includes three categories, User, Bar, Drink. While I was going back and forth between letting the user have many drinks, it made sense at the end of the day to keep it simple and only like *favorite* drinks through bars for now.

- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) - For these favorite bars and drinks, a User has many of her favorite Bars, and those Bars have many favorite Drinks, so you can go back and try them again!

- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) - Conversely, Bars belong to Users, and Drinks belong to Bars.

- [x] Include user accounts with unique login attribute (username or email) - This is included in the User model

- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying - Both belongs_to, Bar and Drink, both have these in their controllers.

- [x] Ensure that users can't modify content created by other users - All checks put in place.

- [x] Include user input validations - included at the model level

- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)

- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code - INcluded the MIT license as promised

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message