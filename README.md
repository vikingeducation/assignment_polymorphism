
This project is an implemented example of a the polymorphic relationship between the child model 'address' and parents 'client', 'vendor', and 'employee'.  
The root page displays all addresses for a given parent type (client, vendor, or employee)
The results.md file will show the terminal output for the following exercises:
# simple association methods
> a_parent.children
> b_parent.children
> some_child.parents
> some_other_child.parents

# re-assigning and adding to associations
> a_parent.children.build(attrs)
> a_parent.children << some_child
> b_parent.children << some_other_child
> b_parent.children << some_child
> a_parent.children_ids = [1,2,3,4]  # ids

# de-associating
> b_parent.children.delete(some_child)

=======
assignment_polymorphism
=======================

Cheer time! When I say "Poly", you say "Morphic", "Gon", "Vore", "Glot" or whatever your receiver returns!
