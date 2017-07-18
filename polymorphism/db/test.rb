


Address.create(street_address: Faker::Address.street_address,
                 city: Faker::Address.city,
                 state_abbr: Faker::Address.state_abbr,
                 zip: Faker::Address.zip,
                 stored_address_type: stored_address_type,
                 stored_address_id: stored_address_id)

Client.first.addresses.build(street_address: Faker::Address.street_address)
