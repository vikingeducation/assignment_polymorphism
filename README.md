assignment_polymorphism
=======================

Cheer time! When I say "Poly", you say "Morphic", "Gon", "Vore", "Glot" or whatever your receiver returns!

A restaurant where an order can be part of breakfast lunch or dinner. They can each have many dishes and those dishes can belong to each of the types of orders. 


BreakfastOrder Class
  has_many :dishes, :as => :dishable
  :name

LunchOrder Class
  has_many :dishes, :as => :dishable

DinnerOrder Class
  has_many :dishes, :as => :dishable


Dishes
  belongs_to :dishable, :polymorphic => true

