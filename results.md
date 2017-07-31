a_parent.children
irb(main):003:0> Client.first.addresses
Client Load (0.2ms)  SELECT  "clients".* FROM "clients" ORDER BY "clients"."id" ASC LIMIT $1  [["LIMIT", 1]]
Address Load (0.3ms)  SELECT "addresses".* FROM "addresses" WHERE "addresses"."stored_address_id" = $1 AND "addresses"."stored_address_type" = $2  [["stored_address_id", 1], ["stored_address_type", "Client"]]
+----+---------+--------+--------+-------+--------+---------+--------+---------+
| id | stre... | city   | sta... | zip   | sto... | stor... | cre... | upda... |
+----+---------+--------+--------+-------+--------+---------+--------+---------+
| 1  | 9671... | Ret... | NV     | 62649 | 1      | Client  | 201... | 2017... |
+----+---------+--------+--------+-------+--------+---------+--------+---------+
1 row in set


b_parent.children
irb(main):005:0> Employee.first.addresses
  Employee Load (0.3ms)  SELECT  "employees".* FROM "employees" ORDER BY "employees"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Address Load (0.2ms)  SELECT "addresses".* FROM "addresses" WHERE "addresses"."stored_address_id" = $1 AND "addresses"."stored_address_type" = $2  [["stored_address_id", 1], ["stored_address_type", "Employee"]]
+----+--------+--------+--------+---------+--------+--------+--------+---------+
| id | str... | city   | sta... | zip     | sto... | sto... | cre... | upda... |
+----+--------+--------+--------+---------+--------+--------+--------+---------+
| 11 | 229... | Bri... | IA     | 1167... | 1      | Emp... | 201... | 2017... |
+----+--------+--------+--------+---------+--------+--------+--------+---------+
1 row in set

irb(main):006:0> Vendor.first.addresses
  Vendor Load (0.2ms)  SELECT  "vendors".* FROM "vendors" ORDER BY "vendors"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Address Load (0.3ms)  SELECT "addresses".* FROM "addresses" WHERE "addresses"."stored_address_id" = $1 AND "addresses"."stored_address_type" = $2  [["stored_address_id", 1], ["stored_address_type", "Vendor"]]
+----+---------+--------+--------+-------+--------+---------+--------+---------+
| id | stre... | city   | sta... | zip   | sto... | stor... | cre... | upda... |
+----+---------+--------+--------+-------+--------+---------+--------+---------+
| 21 | 8358... | Wes... | OH     | 13268 | 1      | Vendor  | 201... | 2017... |
+----+---------+--------+--------+-------+--------+---------+--------+---------+
1 row in set


some_child.parents
irb(main):007:0> Address.first.stored_address
  Address Load (0.2ms)  SELECT  "addresses".* FROM "addresses" ORDER BY "addresses"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Client Load (0.1ms)  SELECT  "clients".* FROM "clients" WHERE "clients"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
+----+-------------------------+-------------------------+--------------+
| id | created_at              | updated_at              | name         |
+----+-------------------------+-------------------------+--------------+
| 1  | 2017-07-17 05:47:35 UTC | 2017-07-17 05:47:35 UTC | Hessel Group |
+----+-------------------------+-------------------------+--------------+
1 row in set

some_other_child.parents
irb(main):008:0> Address.second.stored_address
  Address Load (0.2ms)  SELECT  "addresses".* FROM "addresses" ORDER BY "addresses"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 1]]
  Client Load (0.1ms)  SELECT  "clients".* FROM "clients" WHERE "clients"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
+----+-----------------------+------------------------+------------------------+
| id | created_at            | updated_at             | name                   |
+----+-----------------------+------------------------+------------------------+
| 2  | 2017-07-17 05:47:3... | 2017-07-17 05:47:35... | Thompson, Predovic ... |
+----+-----------------------+------------------------+------------------------+
1 row in set


a_parent.children.build(attrs)
irb(main):002:0> Client.first.addresses.create(:street_address => "123 Main St.", :city => "Acity", :state_abbr => "AL", :stored_address_type => "Client", :stored_address_id => Client.first.id)
  Client Load (0.2ms)  SELECT  "clients".* FROM "clients" ORDER BY "clients"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Client Load (0.2ms)  SELECT  "clients".* FROM "clients" ORDER BY "clients"."id" ASC LIMIT $1  [["LIMIT", 1]]
   (0.1ms)  BEGIN
  Client Load (0.2ms)  SELECT  "clients".* FROM "clients" WHERE "clients"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  SQL (0.4ms)  INSERT INTO "addresses" ("street_address", "city", "state_abbr", "stored_address_id", "stored_address_type", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING "id"  [["street_address", "123 Main St."], ["city", "Acity"], ["state_abbr", "AL"], ["stored_address_id", 1], ["stored_address_type", "Client"], ["created_at", "2017-07-17 13:56:33.632844"], ["updated_at", "2017-07-17 13:56:33.632844"]]
   (10.8ms)  COMMIT
+----+-------------+-------+------------+-----+-------------+-------------+-------------+--------------+
| id | street_a... | city  | state_abbr | zip | stored_a... | stored_a... | created_at  | updated_at   |
+----+-------------+-------+------------+-----+-------------+-------------+-------------+--------------+
| 31 | 123 Main... | Acity | AL         |     | 1           | Client      | 2017-07-... | 2017-07-1... |
+----+-------------+-------+------------+-----+-------------+-------------+-------------+--------------+
1 row in set

a_parent.children << some_child
irb(main):003:0> Employee.first.addresses << Address.second
  Employee Load (0.2ms)  SELECT  "employees".* FROM "employees" ORDER BY "employees"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Address Load (0.2ms)  SELECT  "addresses".* FROM "addresses" ORDER BY "addresses"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 1]]
   (0.0ms)  BEGIN
  Employee Load (0.1ms)  SELECT  "employees".* FROM "employees" WHERE "employees"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  SQL (1.6ms)  UPDATE "addresses" SET "stored_address_id" = $1, "stored_address_type" = $2, "updated_at" = $3 WHERE "addresses"."id" = $4  [["stored_address_id", 1], ["stored_address_type", "Employee"], ["updated_at", "2017-07-17 13:58:48.901998"], ["id", 2]]
   (10.5ms)  COMMIT
  Address Load (0.2ms)  SELECT "addresses".* FROM "addresses" WHERE "addresses"."stored_address_id" = $1 AND "addresses"."stored_address_type" = $2  [["stored_address_id", 1], ["stored_address_type", "Employee"]]
+----+-----------+-----------+-----------+------------+-----------+-----------+-----------+------------+
| id | street... | city      | state_... | zip        | stored... | stored... | create... | updated_at |
+----+-----------+-----------+-----------+------------+-----------+-----------+-----------+------------+
| 2  | 61670 ... | Beaula... | MA        | 99365      | 1         | Employee  | 2017-0... | 2017-07... |
| 11 | 229 Al... | Briann... | IA        | 11679-3878 | 1         | Employee  | 2017-0... | 2017-07... |
+----+-----------+-----------+-----------+------------+-----------+-----------+-----------+------------+
2 rows in set

b_parent.children << some_other_child
irb(main):004:0> Vendor.first.addresses << Address.third
  Vendor Load (0.3ms)  SELECT  "vendors".* FROM "vendors" ORDER BY "vendors"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Address Load (0.1ms)  SELECT  "addresses".* FROM "addresses" ORDER BY "addresses"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 2]]
   (0.0ms)  BEGIN
  Vendor Load (0.1ms)  SELECT  "vendors".* FROM "vendors" WHERE "vendors"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  SQL (0.2ms)  UPDATE "addresses" SET "stored_address_id" = $1, "stored_address_type" = $2, "updated_at" = $3 WHERE "addresses"."id" = $4  [["stored_address_id", 1], ["stored_address_type", "Vendor"], ["updated_at", "2017-07-17 13:59:55.084708"], ["id", 3]]
   (7.4ms)  COMMIT
  Address Load (0.2ms)  SELECT "addresses".* FROM "addresses" WHERE "addresses"."stored_address_id" = $1 AND "addresses"."stored_address_type" = $2  [["stored_address_id", 1], ["stored_address_type", "Vendor"]]
+----+-----------+-----------+-----------+------------+-----------+-----------+-----------+------------+
| id | street... | city      | state_... | zip        | stored... | stored... | create... | updated_at |
+----+-----------+-----------+-----------+------------+-----------+-----------+-----------+------------+
| 3  | 21483 ... | Minashire | WI        | 63944-4461 | 1         | Vendor    | 2017-0... | 2017-07... |
| 21 | 8358 N... | West A... | OH        | 13268      | 1         | Vendor    | 2017-0... | 2017-07... |
+----+-----------+-----------+-----------+------------+-----------+-----------+-----------+------------+
2 rows in set


b_parent.children << some_other_child
irb(main):005:0> Vendor.first.addresses << Address.second
  Vendor Load (0.2ms)  SELECT  "vendors".* FROM "vendors" ORDER BY "vendors"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Address Load (0.1ms)  SELECT  "addresses".* FROM "addresses" ORDER BY "addresses"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 1]]
   (0.1ms)  BEGIN
  Vendor Load (0.1ms)  SELECT  "vendors".* FROM "vendors" WHERE "vendors"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  SQL (0.2ms)  UPDATE "addresses" SET "stored_address_type" = $1, "updated_at" = $2 WHERE "addresses"."id" = $3  [["stored_address_type", "Vendor"], ["updated_at", "2017-07-17 14:00:42.999528"], ["id", 2]]
   (6.3ms)  COMMIT
  Address Load (0.2ms)  SELECT "addresses".* FROM "addresses" WHERE "addresses"."stored_address_id" = $1 AND "addresses"."stored_address_type" = $2  [["stored_address_id", 1], ["stored_address_type", "Vendor"]]
+----+-----------+-----------+-----------+------------+-----------+-----------+-----------+------------+
| id | street... | city      | state_... | zip        | stored... | stored... | create... | updated_at |
+----+-----------+-----------+-----------+------------+-----------+-----------+-----------+------------+
| 2  | 61670 ... | Beaula... | MA        | 99365      | 1         | Vendor    | 2017-0... | 2017-07... |
| 3  | 21483 ... | Minashire | WI        | 63944-4461 | 1         | Vendor    | 2017-0... | 2017-07... |
| 21 | 8358 N... | West A... | OH        | 13268      | 1         | Vendor    | 2017-0... | 2017-07... |
+----+-----------+-----------+-----------+------------+-----------+-----------+-----------+------------+
3 rows in set

a_parent.children_ids = [1, 2, 3, 4]
irb(main):013:0> Vendor.first.address_ids = [1,2, 3, 4]
  Vendor Load (0.2ms)  SELECT  "vendors".* FROM "vendors" ORDER BY "vendors"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Address Load (0.2ms)  SELECT "addresses".* FROM "addresses" WHERE "addresses"."id" IN (1, 2, 3, 4)
  Address Load (0.2ms)  SELECT "addresses".* FROM "addresses" WHERE "addresses"."stored_address_id" = $1 AND "addresses"."stored_address_type" = $2  [["stored_address_id", 1], ["stored_address_type", "Vendor"]]
   (0.1ms)  BEGIN
  SQL (0.2ms)  UPDATE "addresses" SET "stored_address_id" = NULL WHERE "addresses"."stored_address_id" = $1 AND "addresses"."stored_address_type" = $2 AND "addresses"."id" = 21  [["stored_address_id", 1], ["stored_address_type", "Vendor"]]
  Vendor Load (0.1ms)  SELECT  "vendors".* FROM "vendors" WHERE "vendors"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  SQL (0.2ms)  UPDATE "addresses" SET "stored_address_type" = $1, "updated_at" = $2 WHERE "addresses"."id" = $3  [["stored_address_type", "Vendor"], ["updated_at", "2017-07-17 14:19:29.300102"], ["id", 1]]
  Vendor Load (0.1ms)  SELECT  "vendors".* FROM "vendors" WHERE "vendors"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  SQL (0.2ms)  UPDATE "addresses" SET "stored_address_id" = $1, "stored_address_type" = $2, "updated_at" = $3 WHERE "addresses"."id" = $4  [["stored_address_id", 1], ["stored_address_type", "Vendor"], ["updated_at", "2017-07-17 14:19:29.302185"], ["id", 4]]
   (7.0ms)  COMMIT
=> [1, 2, 3, 4]


b_parent.children.delete(some_child)
irb(main):015:0> Vendor.first.addresses.delete(Address.first)
  Vendor Load (0.2ms)  SELECT  "vendors".* FROM "vendors" ORDER BY "vendors"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Address Load (0.1ms)  SELECT  "addresses".* FROM "addresses" ORDER BY "addresses"."id" ASC LIMIT $1  [["LIMIT", 1]]
   (0.3ms)  BEGIN
  SQL (0.2ms)  UPDATE "addresses" SET "stored_address_id" = NULL WHERE "addresses"."stored_address_id" = $1 AND "addresses"."stored_address_type" = $2 AND "addresses"."id" = 1  [["stored_address_id", 1], ["stored_address_type", "Vendor"]]
   (7.2ms)  COMMIT
+----+------------+-----------+------------+-------+------------+------------+------------+------------+
| id | street_... | city      | state_abbr | zip   | stored_... | stored_... | created_at | updated_at |
+----+------------+-----------+------------+-------+------------+------------+------------+------------+
| 1  | 96714 D... | Rettam... | NV         | 62649 | 1          | Vendor     | 2017-07... | 2017-07... |
+----+------------+-----------+------------+-------+------------+------------+------------+------------+
1 row in set
irb(main):016:0> Vendor.first.addresses
  Vendor Load (0.3ms)  SELECT  "vendors".* FROM "vendors" ORDER BY "vendors"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Address Load (0.2ms)  SELECT "addresses".* FROM "addresses" WHERE "addresses"."stored_address_id" = $1 AND "addresses"."stored_address_type" = $2  [["stored_address_id", 1], ["stored_address_type", "Vendor"]]
+----+-----------+-----------+-----------+------------+-----------+-----------+-----------+------------+
| id | street... | city      | state_... | zip        | stored... | stored... | create... | updated_at |
+----+-----------+-----------+-----------+------------+-----------+-----------+-----------+------------+
| 4  | 2092 J... | New Ka... | FL        | 81105-8342 | 1         | Vendor    | 2017-0... | 2017-07... |
| 2  | 61670 ... | Beaula... | MA        | 99365      | 1         | Vendor    | 2017-0... | 2017-07... |
| 3  | 21483 ... | Minashire | WI        | 63944-4461 | 1         | Vendor    | 2017-0... | 2017-07... |
+----+-----------+-----------+-----------+------------+-----------+-----------+-----------+------------+
3 rows in set


dependent: :destroy
irb(main):022:0> Client.third
  Client Load (0.3ms)  SELECT  "clients".* FROM "clients" ORDER BY "clients"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 2]]
+----+-------------------------+-------------------------+----------------+
| id | created_at              | updated_at              | name           |
+----+-------------------------+-------------------------+----------------+
| 5  | 2017-07-17 05:47:35 UTC | 2017-07-17 05:47:35 UTC | Quigley-Gibson |
+----+-------------------------+-------------------------+----------------+
1 row in set
irb(main):023:0> Client.third.addresses
  Client Load (0.2ms)  SELECT  "clients".* FROM "clients" ORDER BY "clients"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 2]]
  Address Load (0.2ms)  SELECT "addresses".* FROM "addresses" WHERE "addresses"."stored_address_id" = $1 AND "addresses"."stored_address_type" = $2  [["stored_address_id", 5], ["stored_address_type", "Client"]]
+----+-------------+------------+------------+-------+-------------+-------------+------------+-------------+
| id | street_a... | city       | state_abbr | zip   | stored_a... | stored_a... | created_at | updated_at  |
+----+-------------+------------+------------+-------+-------------+-------------+------------+-------------+
| 5  | 7982 Har... | Willmsv... | KY         | 87312 | 5           | Client      | 2017-07... | 2017-07-... |
+----+-------------+------------+------------+-------+-------------+-------------+------------+-------------+
1 row in set
irb(main):024:0> Client.third.destroy
  Client Load (0.2ms)  SELECT  "clients".* FROM "clients" ORDER BY "clients"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 2]]
   (0.1ms)  BEGIN
  Address Load (0.1ms)  SELECT "addresses".* FROM "addresses" WHERE "addresses"."stored_address_id" = $1 AND "addresses"."stored_address_type" = $2  [["stored_address_id", 5], ["stored_address_type", "Client"]]
  SQL (0.2ms)  DELETE FROM "addresses" WHERE "addresses"."id" = $1  [["id", 5]]
  SQL (0.2ms)  DELETE FROM "clients" WHERE "clients"."id" = $1  [["id", 5]]
   (6.5ms)  COMMIT
+----+-------------------------+-------------------------+----------------+
| id | created_at              | updated_at              | name           |
+----+-------------------------+-------------------------+----------------+
| 5  | 2017-07-17 05:47:35 UTC | 2017-07-17 05:47:35 UTC | Quigley-Gibson |
+----+-------------------------+-------------------------+----------------+
1 row in set
irb(main):025:0> Address.find(5)
  Address Load (0.3ms)  SELECT  "addresses".* FROM "addresses" WHERE "addresses"."id" = $1 LIMIT $2  [["id", 5], ["LIMIT", 1]]
ActiveRecord::RecordNotFound: Couldn't find Address with 'id'=5
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/core.rb:173:in `find'
	from (irb):25
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_polymorphism/Poly/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'



dependent: :nullify
irb(main):009:0> Employee.first
  Employee Load (0.2ms)  SELECT  "employees".* FROM "employees" ORDER BY "employees"."id" ASC LIMIT $1  [["LIMIT", 1]]
+----+-------------------------+-------------------------+---------------+
| id | created_at              | updated_at              | name          |
+----+-------------------------+-------------------------+---------------+
| 1  | 2017-07-17 05:47:35 UTC | 2017-07-17 05:47:35 UTC | Braeden Upton |
+----+-------------------------+-------------------------+---------------+
1 row in set
irb(main):010:0> Employee.first.addresses
  Employee Load (0.2ms)  SELECT  "employees".* FROM "employees" ORDER BY "employees"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Address Load (0.2ms)  SELECT "addresses".* FROM "addresses" WHERE "addresses"."stored_address_id" = $1 AND "addresses"."stored_address_type" = $2  [["stored_address_id", 1], ["stored_address_type", "Employee"]]
+----+------------+-----------+------------+------------+------------+------------+------------+------------+
| id | street_... | city      | state_abbr | zip        | stored_... | stored_... | created_at | updated_at |
+----+------------+-----------+------------+------------+------------+------------+------------+------------+
| 11 | 229 All... | Briann... | IA         | 11679-3878 | 1          | Employee   | 2017-07... | 2017-07... |
+----+------------+-----------+------------+------------+------------+------------+------------+------------+
1 row in set
irb(main):011:0> Employee.first.delete
  Employee Load (0.6ms)  SELECT  "employees".* FROM "employees" ORDER BY "employees"."id" ASC LIMIT $1  [["LIMIT", 1]]
  SQL (3.0ms)  DELETE FROM "employees" WHERE "employees"."id" = $1  [["id", 1]]
+----+-------------------------+-------------------------+---------------+
| id | created_at              | updated_at              | name          |
+----+-------------------------+-------------------------+---------------+
| 1  | 2017-07-17 05:47:35 UTC | 2017-07-17 05:47:35 UTC | Braeden Upton |
+----+-------------------------+-------------------------+---------------+
1 row in set
irb(main):012:0> Address.find(11)
  Address Load (0.3ms)  SELECT  "addresses".* FROM "addresses" WHERE "addresses"."id" = $1 LIMIT $2  [["id", 11], ["LIMIT", 1]]
+----+------------+-----------+------------+------------+------------+------------+------------+------------+
| id | street_... | city      | state_abbr | zip        | stored_... | stored_... | created_at | updated_at |
+----+------------+-----------+------------+------------+------------+------------+------------+------------+
| 11 | 229 All... | Briann... | IA         | 11679-3878 | 1          | Employee   | 2017-07... | 2017-07... |
+----+------------+-----------+------------+------------+------------+------------+------------+------------+
1 row in set
