class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, presence: true
  validates :cocktail_id, :ingredient_id, uniqueness: { scope: [:cocktail, :ingredient] }
  # this works too: validates :cocktail, uniqueness: { scope: :ingredient }
end
