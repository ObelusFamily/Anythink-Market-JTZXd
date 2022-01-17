require_relative './seeds/seeding'

puts "Seeding users..."
seed_users

puts "Seeding items..."
seed_items

puts "Seeding comments..."
seed_comments

puts "Finish "
