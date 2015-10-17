assignment_polymorphism
=======================

## Bideo Wego

This assignment builds out a polymorphic relationship between a `Rating` model and it's possible ratable parent models. The ratables in this example are `Hotel` and `Airline`.

The `Rating` model has columns to store the ID and type of the ratable model. The `Rating` model is then given an association of `belongs_to :ratable, :polymorphic => true`. This allows access to it's parent model without knowing the type.

Each ratable is given an association of `has_many :ratings, :as => :ratable, :dependent => :destroy`. This allows fetching of all the associated ratings and destroys the dependent rows when the parent is destroyed.

As an added bonus, this project uses [Bootstrap glyphicons](http://getbootstrap.com/components/#glyphicons) for the rating star icons as well as provides a method on each ratable model for the average rating (for each instance). The average rating functionality is kept DRY by offloading the generation of the average to the `Rating` model and simply passing it the ratable ID and type.

# Schema

### Rating
- value
- ratable_id
- ratable_type

### Hotel
- name

### Airline
- name

Cheer time! When I say "Poly", you say "Morphic", "Gon", "Vore", "Glot" or whatever your receiver returns!

An assignment form the [Viking Code School](http://vikingcodeschool.com)