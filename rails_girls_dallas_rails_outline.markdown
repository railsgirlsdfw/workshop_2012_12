# Rails Girls Dallas
## Rails Class Outline
##### Scott Johnson @t_itchy
#### Each section should take ~ 10 Minutes => 70 minutes total
___
1. Ruby on Rails
  * Convention over configuration
  * Model View Controller
  * Built for "Real World Applications"
2. Spec out an Application
  * What does it do?
      * Entity Relationship Diagrams (ERD)
      * Unified Modeling Language (UML) 
      * Stories
      * Wireframes
  * Things (Models) and User Interfaces (Views)
      * Questions & Choices
      * Admin to Create/Update Questions and Choices
      * User view question & make selection
      * Admin/User view results
3. Create Application
  * `$ rails new quick_poll`
  * `$ mate quick_poll` (Or however you open in your Text Editor)
  * Look at app folder 
      * controllers
      * models
      * views
  * `$ rails s`
      * In web browser goto **http://localhost:3000**
      * see failure in db connectivity
  * `$ rake db:create`
      * see success on all system fronts 
4. Scaffolds & Migrations
  * `$ rails g scaffold question fields:types`
  * `$ rails g scaffold choices fields:type`
  * Look at migration files
  * `$ rake db:migrate`
  * In web browser goto **http://localhost:3000/questions**
      * make some questions
5. Relationships
  * Open */config/routes.rb*
  * uncomment last line
  * Open */app/models/question.rb*  
    `class Question < ActiveRecord::Base  
       has_many choices  
    end`  
  * Open */app/models/choice.rb*       
    `class Choice < ActiveRecord::Base  
      belongs_to question  
    end`
  * create choices for questions
6. Respondent Interface
  * CRUD
      * Store response
      * Increment Response Count     
      * Show results page
7. Finishing touches
  * Add style sheets
  * Post to Twitter/Facebook       