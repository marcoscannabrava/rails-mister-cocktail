class Ingredient < ApplicationRecord
  before_destroy :check_cocktails

  has_many :doses
  validates :name, uniqueness: true
  validates :name, presence: true
  
  def check_cocktails
    false if doses.positive?
  end
end
