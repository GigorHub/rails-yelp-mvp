require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
100.times do
  restaurant = Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.street_address, category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
