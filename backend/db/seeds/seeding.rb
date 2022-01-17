require 'csv'

def seed_users
    csv_file_path = Rails.root.join('db', 'seeds', 'data', 'users.csv').to_s
    puts "Seeding users from #{csv_file_path}..."
    file = File.new(csv_file_path, 'r')
    csv = CSV.new(file)
  
  csv.each do |row|
    user_information = {
      username: row[0],
      email: row[1],
      password: row[2]
    }
    User.create(user_information)
  end
  puts "Seeding users from #{csv_file_path} done."
end

def seed_items
    csv_file_path = Rails.root.join('db', 'seeds', 'data', 'items.csv').to_s
    puts "Seeding items from #{csv_file_path}..."
    file = File.new(csv_file_path, 'r')
    csv = CSV.new(file)
  
  csv.each do |row|
    item_information = {
      title: row[0],
      slug: row[1],
      description: row[2],
      image: row[3],
      user_id: row[4]
    }
    Item.create!(item_information)
  end
  puts "Seeding items from #{csv_file_path} done."
end
