require 'faker'

puts 'Creating 10 restaurants'

10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    city: Faker::Address.city
  )

  restaurant.save
end

puts 'Finished!'
