# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Allergy.destroy_all

u1 = User.create(name: "Lucas")
u2 = User.create(name: "Alena")

r1 = Recipe.create(name: "Banana Bread", user_id: u1.id)
r2 = Recipe.create(name: "Cinamon Roll", user_id: u1.id)

i1 = Ingredient.create(name: "Peanuts")
i2 = Ingredient.create(name: "Banana")
i3 = Ingredient.create(name: "Apple")

a1 = Allergy.create(user_id: u1.id, ingredient_id: i2.id)
a2 = Allergy.create(user_id: u2.id, ingredient_id: i2.id)
a3 = Allergy.create(user_id: u1.id, ingredient_id: i1.id)


puts 'done'



# ble "allergies", force: :cascade do |t|
#     t.integer "user_id"
#     t.integer "ingredient_id"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table "ingredients", force: :cascade do |t|
#     t.string "name"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table "recipe_ingredients", force: :cascade do |t|
#     t.integer "recipe_id"
#     t.integer "ingredient_id"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table "recipes", force: :cascade do |t|
#     t.string "name"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end
