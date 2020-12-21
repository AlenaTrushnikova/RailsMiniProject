class Ingredient < ApplicationRecord
    has_many :recipes
    has_many :users, through: :recipes
    has_many :allergies
end
