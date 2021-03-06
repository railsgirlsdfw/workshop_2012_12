# Rails Girls Dallas
## Rails Class Outline
##### Scott Johnson @t_itchy
#### Each section should take ~ 8 Minutes => 60 minutes total
___
1. Ruby on Rails
  * Convention over configuration
  * Model View Controller
  * Built for "Real World" Applications
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
      * see success on all system fronts 
4. Scaffolds & Migrations
  * `$ rails generate scaffold Question text:string current:integer`
  * `$ rails generate scaffold Choice question_id:integer text:string position:integer count:integer`
  * Look at migration files & add defaults
  * `$ rake db:migrate`
  * In web browser goto **http://localhost:3000/questions**
      * make some questions
5. Relationships    
  `/config/routes.rb`

  ```ruby
    # This is a legacy wild controller route that's not recommended for RESTful applications.
    # Note: This route will make all actions in every controller accessible via GET requests.
    match ':controller(/:action(/:id))(.:format)'
  ```
  `/app/models/question.rb`

  ```ruby
    class Question < ActiveRecord::Base  
      has_many choices
    end
  ```
  `/app/models/choice.rb`

  ```ruby
    class Choice < ActiveRecord::Base   
      belongs_to question    
    end
  ```  
  
  * create choices for questions
6. Respondent Interface
  * `$ rails generate controller polls`
  * CRUD
      * Store response
      * Increment Response Count
      * Show results page
      
7. Finishing touches
  * Add style sheets
  * Post to Twitter/Facebook