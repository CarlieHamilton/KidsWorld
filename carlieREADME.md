# Kids World

- Deployed website - [kidsworld.heroku.com]( https://kidsworld.herokuapp.com/ )
- Github repository - [kidsworld github repository]( https://github.com/BlueCodeThree/KidsWorld )

A two-sided marketplace where people can buy and sell kids products, such as toys, clothes and more.

- Description of your project, including,
- Problem definition / purpose
- Functionality / features
- Screenshots
- Tech stack (e.g. html, css, deployment platform, etc)
## Instructions on how to setup, configure and use your App.
- fork and clone
- bundle install
- update database.yml
- `rails db:schema:load`
- `rails db:seed`
- `rails s` to run the server

- Design documentation including,
- Design process
-

## User stories

We created a list of user stories that we needed to complete for our MVP, as well as user stories as stretch goals. They are as follows:

- A user can view all items available for sale

Sold items would not be viewable so that they do not confuse the buyer. A user would not have to be logged in to see all the items.

- A user can buy an item
- A user can sell an item (create a listing)

A user can only create a listing if they are signed in.

- A user can edit and delete a listing

A user would only be able to edit and delete their own listings.

- A user can upload an image to their listing
- A user can log in and out
- A user can view the details of an individual item
- A user can see a list of their past purchases (stretch goal)

As a stretch goal, we would have to implement a "Purchases" model

- A user can see a list of their sold items (stretch goal)

Goal completed. A user can see their sold items, who purchased them, and the person's contact email

- A user can sort all the listings (by price, most recent, by category -- stretch goal)

We have implemented being able to select a category, as a part of our main menu. Sorting by most recent is the default view. In the future we would implement being able to sort by price, and other ways of sorting.

- A user can message another user (stretch goal)

We envision this will be so that users can contact other users through the website to organise pickup or delivery. At the moment, users get access to the person's email address which is not ideal.

- A workflow diagram of the user journey/s.
- Wireframes
- Database Entity Relationship Diagrams
- Details of planning process including,

### Project Planning and Timeline

#### Trello
Day 2 - July 23 Trello Board
![ Trello 23rd July ]( /docs/trello23july.png )

Day 3 - July 24th Trello Board
![ Trello 24rd July ]( /docs/trello24july.png )

## Short Answer Questions

- What is the need (i.e. challenge) that you will be addressing in your project?
- Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?
- Describe the project will you be conducting and how. your App will address the needs.

Children outgrow clothes quickly, use toys for a small amount of time. Website allows parents to sell new and used kids items instead of throwing them out, and parents can buy quality products without having to pay retail.

- Describe the network infrastructure the App may be based on.
- Identify and describe the software to be used in your App.
- Identify the database to be used in your App and provide a justification for your choice.
- Identify and describe the production database setup (i.e. postgres instance).
- Describe the architecture of your App.
- Explain the different high-level components (abstractions) in your App.
- Detail any third party services that your App will use.

Cloudinary - cloud storage for images
Stripe - moneys
Heroku - deployment

- Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

Data structure of Etsy?

- Discuss the database relations to be implemented.
- Describe your project’s models in terms of the relationships (active record associations) they have with each other.
- Provide your database schema design.
- Provide User stories for your App.
- Provide Wireframes for your App.
- Describe the way tasks are allocated and tracked in your project.
- Discuss how Agile methodology is being implemented in your project.

Scrum, stand up - did yesterday/today/any obstacles
feature driven development
test driven development
deploying early, changing requirements if necessary


- Provide an overview and description of your Source control process.

Github, feature branch, pull request.

- Provide an overview and description of your Testing process.

Rspec
to run, `rspec -f d`
Write a new feature, write a new test. Test driven development.
Save it to a log

Tests defined for all user stories **

- Discuss and analyse requirements related to information system security.
- Discuss methods you will use to protect information and data.
- Research what your legal obligations are in relation to handling user data.
-