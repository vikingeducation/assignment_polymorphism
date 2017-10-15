Project: assignment_polymoprhism
============================

Practice polymorphism

[Andrea A](https://github.com/andie5/assignment_polymorphism)

## To Get Going 
- run `rake db:create`
- run `rake db:migrate`
- run `rake db:seed`

- run `rails s`
- In the browser run `localhost:3000`


The Viking Store e-commerce application for Viking Commerce Inc
from the [Viking Code School](http://vikingcodeschool.com)


## Polymorphism relationship
Address can belong to many things
- Person
- Off Licence
- Dentist


## Description of model
In each model - address_type as well as address_id
Each model will be 'addresssable'


##Tests
### simple association methods
`Company.first.addresses`
`Person.first.addresses`
`Address.first.addressable`
`Address.second.addressable`

### re-assigning and adding to associations
 `Company.first.addresses.build(:street_address => Faker::Address.street_address,`
                  `:address_line_2 => Faker::Address.community,`
                  `:postcode => Faker::Address.zip_code,`
                  `:addressable_id => "Company",`
                  `:addressable_type => Company.last.id)`
 `Company.second.addresses << Address.second`
 `Person.second.addresses << Address.third`
 `Company.second.address_ids`  # ids

### de-associating
 `Company.second.addresses.delete(Address.second)`

