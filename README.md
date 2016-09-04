Polymorphism
=======================
[Johhny](https://github.com/jsteenb2) and [Dylan](https://github.com/lynchd2)

###Description
This is an exercise that utilizes polymorphic relationships to normalize our DB. The example is a simple, straightforward example of how to implement a polymorphic relationship with a child model that has multiple parent model types.

###Example:

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
