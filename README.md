assignment_polymorphism
=======================

Cheer time! When I say "Poly", you say "Morphic", "Gon", "Vore", "Glot" or whatever your receiver returns!

Alice & Garrett


Polymorphic relationship:

Babysitting: baby, dog, adult

Assumption: babysitting babysits one thing/job

Babysitter, Baby, Dog, Adult

Babysitter
  ID TYPE typeID  NAME
  1  Baby   #1     ...
  2  dog    #2
  3  adult  #6
  4  baby   #3

Babysitter.first.babysitterable
                .things_being_babysat

Dog.second.babysitter
          .babysat_by