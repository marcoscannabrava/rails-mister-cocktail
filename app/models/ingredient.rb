class Ingredient < ApplicationRecord
  before_destroy :check_cocktails
  validates :name, presence: true, uniqueness: true
  has_many :doses

  def check_cocktails
    false if doses.any?
  end
end
