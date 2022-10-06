100.times do
  User.create({name: Faker::Name.name, email: Faker::Internet.email, address: Faker::Address.full_address})
end