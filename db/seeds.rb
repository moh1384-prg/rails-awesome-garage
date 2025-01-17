# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
Review.destroy_all
Car.destroy_all
Favourite.destroy_all

Owner.destroy_all


# Create Owners
owner_1 = Owner.create!(nickname: "Lambo_king")
owner_2 = Owner.create!(nickname: "Ferrari_king")
owner_3 = Owner.create!(nickname: "Mustang_king")

# Image IDs from Cloudinary
lamborghini_image_id = "espyqqyv7njhwjbhlprx"
ferrari_image_id = "pxjz3odbetmwhyhazdbo"
mustang_image_id = "l4mc2cswwucfodj9cocc"

# Create Cars
Car.create!([
  {
    brand: "Lamborghini",
    model: "Aventador",
    image: lamborghini_image_id,
    year: 2020,
    fuel: "Petrol",
    owner: owner_1
  },
  {
    brand: "Ferrari",
    model: "Enzo",
    image: ferrari_image_id,
    year: 2022,
    fuel: "Petrol",
    owner: owner_2
  },
  {
    brand: "Ford",
    model: "Mustang",
    image: mustang_image_id,
    year: 2024,
    fuel: "Petrol",
    owner: owner_3
  }
])
