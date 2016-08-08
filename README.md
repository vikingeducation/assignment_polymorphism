assignment_polymorphism
=======================
[Johhny](https://github.com/jsteenb2) and [Dylan](https://github.com/lynchd2)

Cheer time! When I say "Poly", you say "Morphic", "Gon", "Vore", "Glot" or whatever your receiver returns!


Model: Head, Human, Cat

Parents: Human, Cat
Child- Head

class Head
  belongs_to headable, polymorphic: true
end

class Human
  has_one :head, as :headable
end

class Cat
  has_one :head, as :headable
end