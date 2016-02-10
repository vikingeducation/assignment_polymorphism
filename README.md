assignment_polymorphism
=======================

Cheer time! When I say "Poly", you say "Morphic", "Gon", "Vore", "Glot" or whatever your receiver returns!

Josh

Animals can have humans that are "their" humans...

Human
  belongs_to :humanable, polymorphic: true
  humanable_type
  humanable_id

Dog
  has_many :humans, as: :humanable

Cat
  has_many :humans, as: :humanable
