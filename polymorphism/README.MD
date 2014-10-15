#Polymorphism assignment
================================

Part of **Viking Code School**

Description: This project is a miniature exercise to test knowledge of polymorphism in Rails.  In my example, I have two parent models, "Pizza" and "Sandwich", which each have a polymorhpic child, "Toppings".  


The output below sample output for all expected associations.  Additionally, there's a miniature web interface with custom routes set up that shows this same information to the user in the browser


=================



1)> a_parent.children
2)> b_parent.children
3)> some_child.parents
4)> some_other_child.parents
5)> a_parent.children.build(attrs)
6)> a_parent.children << some_child
7)> b_parent.children << some_other_child
8)> b_parent.children << some_child
9)> a_parent.children_ids = [1,2,3,4]  # ids
10)> b_parent.children.delete(some_child)

##Start:
========

1) > p=Pizza.first
  Pizza Load (0.3ms)  SELECT  "pizzas".* FROM "pizzas"   ORDER BY "pizzas"."id" ASC LIMIT 1
 => #<Pizza id: 1, name: "Neopolitan", created_at: "2014-10-15 00:29:09", updated_at: "2014-10-15 00:29:09"> 
2.1.2 :023 > p.toppings
  Topping Load (0.2ms)  SELECT "toppings".* FROM "toppings"  WHERE "toppings"."toppable_id" = ? AND "toppings"."toppable_type" = ?  [["toppable_id", 1], ["toppable_type", "Pizza"]]
 => #<ActiveRecord::Associations::CollectionProxy [#<Topping id: 2, name: "Cheese", toppable_id: 1, toppable_type: "Pizza", created_at: "2014-10-15 00:35:38", updated_at: "2014-10-15 00:35:38"



2) > s=Sandwich.first
  Sandwich Load (0.2ms)  SELECT  "sandwiches".* FROM "sandwiches"   ORDER BY "sandwiches"."id" ASC LIMIT 1
 => #<Sandwich id: 1, name: "Italian", created_at: "2014-10-15 00:29:09", updated_at: "2014-10-15 00:29:09"> 
2.1.2 :025 > s.toppings
  Topping Load (0.3ms)  SELECT "toppings".* FROM "toppings"  WHERE "toppings"."toppable_id" = ? AND "toppings"."toppable_type" = ?  [["toppable_id", 1], ["toppable_type", "Sandwich"]]
 => #<ActiveRecord::Associations::CollectionProxy [#<Topping id: 1, name: "Pepperoni", toppable_id: 1, toppable_type: "Sandwich", created_at: "2014-10-15 00:34:06", updated_at: "2014-10-15 00:34:06">]> 
2.1.2 :026 > 


3)t.toppable
  Sandwich Load (0.2ms)  SELECT  "sandwiches".* FROM "sandwiches"  WHERE "sandwiches"."id" = ? LIMIT 1  [["id", 1]]
 => #<Sandwich id: 1, name: "Italian", created_at: "2014-10-15 00:29:09", updated_at: "2014-10-15 00:29:09"> 
2.1.2 :033 > 


4)t.toppable
  Pizza Load (0.3ms)  SELECT  "pizzas".* FROM "pizzas"  WHERE "pizzas"."id" = ? LIMIT 1  [["id", 1]]
 => #<Pizza id: 1, name: "Neopolitan", created_at: "2014-10-15 00:29:09", updated_at: "2014-10-15 00:29:09"> 
2.1.2 :035 > 

5)2.1.2 :041 > p.toppings.build(name: "Mushrooms").save
   (0.2ms)  begin transaction
  SQL (0.3ms)  INSERT INTO "toppings" ("created_at", "name", "toppable_id", "toppable_type", "updated_at") VALUES (?, ?, ?, ?, ?)  [["created_at", "2014-10-15 00:45:39.503840"], ["name", "Mushrooms"], ["toppable_id", 1], ["toppable_type", "Pizza"], ["updated_at", "2014-10-15 00:45:39.503840"]]
   (2.0ms)  commit transaction
 => true 
2.1.2 :042 > p.toppings
 => #<ActiveRecord::Associations::CollectionProxy [#<Topping id: 2, name: "Cheese", toppable_id: 1, toppable_type: "Pizza", created_at: "2014-10-15 00:35:38", updated_at: "2014-10-15 00:35:38">, #<Topping id: nil, name: nil, toppable_id: 1, toppable_type: "Pizza", created_at: nil, updated_at: nil>, #<Topping id: nil, name: "Mushrooms", toppable_id: 1, toppable_type: "Pizza", created_at: nil, updated_at: nil>, #<Topping id: 3, name: "Mushrooms", toppable_id: 1, toppable_type: "Pizza", created_at: "2014-10-15 00:45:39", updated_at: "2014-10-15 00:45:39">]> 
2.1.2 :043 > 

6)p.toppings << Topping.find(1)
  Topping Load (0.3ms)  SELECT  "toppings".* FROM "toppings"  WHERE "toppings"."id" = ? LIMIT 1  [["id", 1]]
   (0.1ms)  begin transaction
  SQL (0.5ms)  UPDATE "toppings" SET "toppable_type" = ?, "updated_at" = ? WHERE "toppings"."id" = 1  [["toppable_type", "Pizza"], ["updated_at", "2014-10-15 00:46:50.267401"]]
   (2.0ms)  commit transaction
 => #<ActiveRecord::Associations::CollectionProxy [#<Topping id: 2, name: "Cheese", toppable_id: 1, toppable_type: "Pizza", created_at: "2014-10-15 00:35:38", updated_at: "2014-10-15 00:35:38">, #<Topping id: nil, name: nil, toppable_id: 1, toppable_type: "Pizza", created_at: nil, updated_at: nil>, #<Topping id: nil, name: "Mushrooms", toppable_id: 1, toppable_type: "Pizza", created_at: nil, updated_at: nil>, #<Topping id: 3, name: "Mushrooms", toppable_id: 1, toppable_type: "Pizza", created_at: "2014-10-15 00:45:39", updated_at: "2014-10-15 00:45:39">, #<Topping id: 1, name: "Pepperoni", toppable_id: 1, toppable_type: "Pizza", created_at: "2014-10-15 00:34:06", updated_at: "2014-10-15 00:46:50">]> 
2.1.2 :044 > 

7) 2.1.2 :046 > s.toppings << Topping.find(3)
  Topping Load (0.2ms)  SELECT  "toppings".* FROM "toppings"  WHERE "toppings"."id" = ? LIMIT 1  [["id", 3]]
   (0.2ms)  begin transaction
  SQL (0.5ms)  UPDATE "toppings" SET "toppable_type" = ?, "updated_at" = ? WHERE "toppings"."id" = 3  [["toppable_type", "Sandwich"], ["updated_at", "2014-10-15 00:47:13.060266"]]
   (2.3ms)  commit transaction
 => #<ActiveRecord::Associations::CollectionProxy [#<Topping id: 1, name: "Pepperoni", toppable_id: 1, toppable_type: "Sandwich", created_at: "2014-10-15 00:34:06", updated_at: "2014-10-15 00:34:06">, #<Topping id: 3, name: "Mushrooms", toppable_id: 1, toppable_type: "Sandwich", created_at: "2014-10-15 00:45:39", updated_at: "2014-10-15 00:47:13">]> 
2.1.2 :047 > 

8)2.1.2 :047 > s.toppings << Topping.find(1)
  Topping Load (0.2ms)  SELECT  "toppings".* FROM "toppings"  WHERE "toppings"."id" = ? LIMIT 1  [["id", 1]]
   (0.2ms)  begin transaction
  SQL (0.4ms)  UPDATE "toppings" SET "toppable_type" = ?, "updated_at" = ? WHERE "toppings"."id" = 1  [["toppable_type", "Sandwich"], ["updated_at", "2014-10-15 00:47:35.604411"]]
   (2.1ms)  commit transaction
 => #<ActiveRecord::Associations::CollectionProxy [#<Topping id: 1, name: "Pepperoni", toppable_id: 1, toppable_type: "Sandwich", created_at: "2014-10-15 00:34:06", updated_at: "2014-10-15 00:34:06">, #<Topping id: 3, name: "Mushrooms", toppable_id: 1, toppable_type: "Sandwich", created_at: "2014-10-15 00:45:39", updated_at: "2014-10-15 00:47:13">, #<Topping id: 1, name: "Pepperoni", toppable_id: 1, toppable_type: "Sandwich", created_at: "2014-10-15 00:34:06", updated_at: "2014-10-15 00:47:35">]> 
2.1.2 :048 > 

9) 2.1.2 :052 > s.topping_ids = [1,2,3]
  Topping Load (0.4ms)  SELECT "toppings".* FROM "toppings"  WHERE "toppings"."id" IN (1, 2, 3)
   (0.1ms)  begin transaction
   (0.1ms)  commit transaction
 => [1, 2, 3] 

 10)2.1.2 :053 > s.toppings.delete(3)
  Topping Load (0.3ms)  SELECT  "toppings".* FROM "toppings"  WHERE "toppings"."toppable_id" = ? AND "toppings"."toppable_type" = ? AND "toppings"."id" = ? LIMIT 1  [["toppable_id", 1], ["toppable_type", "Sandwich"], ["id", 3]]
   (0.1ms)  begin transaction
  SQL (0.4ms)  UPDATE "toppings" SET "toppable_id" = NULL WHERE "toppings"."toppable_id" = ? AND "toppings"."toppable_type" = ? AND "toppings"."id" IN (3)  [["toppable_id", 1], ["toppable_type", "Sandwich"]]
   (1.7ms)  commit transaction
 => [#<Topping id: 3, name: "Mushrooms", toppable_id: 1, toppable_type: "Sandwich", created_at: "2014-10-15 00:45:39", updated_at: "2014-10-15 00:47:13">] 
2.1.2 :054 > 

