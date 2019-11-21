class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates_associated :cocktail
  validates_associated :ingredient
  validates :ingredient_id, uniqueness: { scope: :cocktail_id }
end
