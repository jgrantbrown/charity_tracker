# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
    Rails genrerated project
- [x] Include at least one has_many relationship
 (x has_many y e.g. User has_many Recipes)
    Charity has many pledges

- [x] Include at least one belongs_to
 relationship (x belongs_to y e.g. Post belongs_to User)
  comment  belongs to pledge
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
has_many :students, through: :studentcharities

- [X] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
- [x] Include reasonable validations for simple model objects (list of model objects with
   validations e.g. User, Recipe, Ingredient, Item)
   Pledge amnount must ne above zero and a number
- [X] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
  charity with most pledges
  http://localhost:3000/most_pledges

<!-- REMOVED FROM SPEC IN UPDATE
- [?] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item) -->


- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
  USed deivse and ominoauth for facebook


- [x ] Include nested resource show or index (URL e.g. users/2/recipes)
- [ x] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
- [ x] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ x] The application is pretty DRY
- [ x] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate




one-one support
https://theflatironschool.typeform.com/to/B9BrgH
