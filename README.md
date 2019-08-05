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

Goal completed. A user can view their past purchases. We implemented a Purchases model to record who purchased what item.

- A user can see a list of their sold items (stretch goal)

Goal completed. A user can see their sold items, who purchased them, and the person's contact email

- A user can sort all the listings (by price, most recent, by category -- stretch goal)

We have implemented being able to select a category, as a part of our main menu. Sorting by most recent is the default view. In the future we would implement being able to sort by price, and other ways of sorting.

- A user can message another user (stretch goal)

We envision this will be so that users can contact other users through the website to organise pickup or delivery. At the moment, users get access to the person's email address which is not ideal.

### A workflow diagram of the user journey/s.
## Wireframes

### Mobile

### Desktop
![desktop wireframe homepage](docs/wireframe-homepage.png)
![desktop wireframe listing](docs/wireframe-listing.png)
![desktop wireframe product description](docs/wireframeproddesc.png)

### Tablet


- Database Entity Relationship Diagrams
- Details of planning process including,

### Project Planning and Timeline

#### Trello
Day 2 - July 23 Trello Board
![ Trello 23rd July ]( /docs/trello23july.png )

Day 3 - July 24th Trello Board
![ Trello 24rd July ]( /docs/trello24july.png )

## Short Answer Questions

### 1) What is the need (i.e. challenge) that you will be addressing in your project?
### 2) Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?
### 3) - Describe the project will you be conducting and how. your App will address the needs.

Parents always like to give quality products to their kids. But often, quality products are very expensive and not afordable by many. Our website allows parents to sell new and used kids items instead of throwing them out, and parents can buy quality products without having to pay retail. Often kids use a particular toy for a limited amount of time. Either they loose interest or they get new toys. The old toy is undamanged and still in good condition. So why not put the toy up for sale at a resonable price so that other kids could also enjoy it ? Same is the case with books and clothes, kids soon outgrow the clothes and books meant for their age and dont need them anymore. 
This thought made us bring up with an idea to create a website that could sell used and new toys, books, clothes and accessories like bedding etc so that every kid can enjoy and make memories in their childhood.

# 4) Describe the network infrastructure the App may be based on.

# 5) Identify and describe the software to be used in your App.

# 6) Identify the database to be used in your App and provide a justification for your choice.

### 7) Identify and describe the production database setup (i.e. postgres instance).

Heroku runs its own postgresql server instance. The database needs to be setup to run in the heroku (production) environment.
To set up the database, the following steps were followed:
    ** To create our tables from the db/schema.rb file - heroku run rails db:schema:load 
    ** To update the changes made to the database structure (tables, columns) once changes where made after deploying to production - heroku rails db:migrate 
    ** To seed any data we need in production - heroku rails db:seed

# 8) Describe the architecture of your App.

# 9) Explain the different high-level components (abstractions) in your App.

### 10) Detail any third party services that your App will use.

The app will use the following third party services.

1) Cloudinary - A cloud-based image and video management solution. It enables users to upload, store, manage, manipulate and deliver images and video for websites and apps. In our website, we used this solution to store and manage images of the items the seller would like to sell.

2) Stripe - Allows individuals and businesses to make and receive payments over the Internet. In our website, we have a "Checkout Now" button with each item listed. When this button is clicked, the browser redirects to stripe where credit card data is handled. Once the payment is done by entering the credit card data, stripe will redirect the customer’s browser back.

3) Heroku - A cloud platform service where websites can be deployed. To deploy our website, we used Heroku's Git server which handles the application repository pushes. 

* To create a new git remote - heroku create kidsworld. 
  The git remote created for our website is : https://kidsworld.herokuapp.com/
* To check the connection to the repository hosted on heroku - git remote -v
* To let heroku know the key value for the website to work, we need to set the master key in the heroku environment .The master key     can be found in the config directory in a file called master.key
* To set the master key - heroku config:set RAILS_MASTER_KEY=<master-key>
* To push to the heroku repo - git push heroku master
* To set up the database, the following steps were followed:
    ** To create our tables from the db/schema.rb file - heroku run rails db:schema:load 
    ** To update the changes made to the database structure (tables, columns) once changes where made after deploying to production - heroku rails db:migrate 
    ** To seed any data we need in production - heroku rails db:seed
* To open the website in heroku - heroku open.
  The webpage https://kidsworld.herokuapp.com/ opens up in the browser.

#11) Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

Data structure of Etsy?

# 12) Discuss the database relations to be implemented.
# 13) Describe your project’s models in terms of the relationships (active record associations) they have with each other.
# 14) Provide your database schema design.


# 15) Provide User stories for your App.
# 16) Provide Wireframes for your App.
# 17) Describe the way tasks are allocated and tracked in your project.
# 18) Discuss how Agile methodology is being implemented in your project.

Although we were only a team of two, we implemented numerous agile methodologies in our workflow.

We broke down our user stories, and then integrated them into tasks on our trello kanban board (see the trello screenshot section).

We worked closely together, often utilizing pair programming, and we marked this time off on our trello boards as both working on the task. We also worked in daily sprints, utilising our trello board to track these sprints.

We participated in the classroom-wide stand up, which meant that we also together went through what we did the previous day, our goal for that day's sprint, and any obstacles that we were facing.

Our coding focused on feature driven development, aligning with our user stories, and we used [unit testing](https://github.com/BlueCodeThree/KidsWorld/blob/testing/log/test_results.log) to test our implementation.

We deployed early and often to Heroku, changing our requirements for the project if necessary.



### 19) Provide an overview and description of your Source control process.

Source control is the process of tracking code changes, able to view the revision history of the code, and be able to rollback to previous versions when needed. 
The source code management system that we used is Git. We created a git repository for our app. We have the master branch and created feature branches using the command 'git checkout -b branch-name' to work on our code independently. Once we have finished our code changes on a particular branch, we used the commands 'git add' and 'git commit' to store our changes locally. We then used 'git push origin branch-name' to push our local changes to the feature branch in the git repository. The other teammate could then pull down the branch using a pull request, review and test the code change, then accept/decline the changes, leave comments and push/merge it to the master branch if everything works fine. We have faced some merge conflicts and figured out what changes needs to be accpeted and have resolved the conflicts. We have worked independently on feature branches and have done frequent commits to the master so that its easy to manage and does not break the functionality. 


# 20) Provide an overview and description of your Testing process.



Rspec
to run, `rspec -f d`
Write a new feature, write a new test. Test driven development.
Save it to a log

Tests defined for all user stories **

# 21) Discuss and analyse requirements related to information system security.
# 22) Discuss methods you will use to protect information and data.
# 23) Research what your legal obligations are in relation to handling user data.