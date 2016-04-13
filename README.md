assignment_polymorphism
by Steven Chang
=======================

Cheer time! When I say "Poly", you say "Morphic", "Gon", "Vore", "Glot" or whatever your receiver returns!

1. Identify a simple polymorphic relationship involving at least two parent models and one child model. It can't be any of the examples used in the reading (e.g. Comments).

Went out to the foodcourt to grab a snack and I'm not 100% sure about this but I thought 

restaurants
	items
vending_machines
	items

- @item.parent would tell us the parent of each one. 

"If you find yourself thinking about making multiple columns in your database..."

Item table
id | name | restaurant_id | vending_machine_id

- The one thing about this is that an item could possibly belong to both a restaurant and a vending machine, which could warrant both columns. 
- I think considering that we can still use this as a polymorphic relationship and for the sake of practice and constraints in time, it's worth giving it a go.

2. Write in your README what relationship you've selected and the terminology you'll use to express it.

"For starters, figure out what to call the abstract relationship you're working with..."

vendor_type
vendor_id

3. Build these models and migrate their component tables in Rails.

3 models
1. Items
2. Restaurants
3. VendingMachines

# items
t.string :name, :null => false
t.string :vendor_type, :null => false
t.integer :vendor_id, :null => false

add_index :items, [:vendor_type, :vendor_id]

# restaurants
t.string :name, :null => false

# vending_machines
t.string :latitude :null => false
t.string :longitude :null => false





