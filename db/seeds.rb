puts "creating roles.."
Role.create(character_name: "Rick")
Role.create(character_name: "Morty")
Role.create(character_name: "Bob")
Role.create(character_name: "Greg")

puts "creating auditions.."
25.times do
    Audition.create(
        actor: Faker::Name.name,
        location: Faker::Nation.capital_city,
        phone: Faker::PhoneNumber.phone_number,
        hired: Faker::Boolean.boolean,
        role_id: Role.all.sample.id
    )
end