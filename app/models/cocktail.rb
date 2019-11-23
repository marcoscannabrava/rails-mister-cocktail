class Cocktail < ApplicationRecord
  before_destroy :destroy_doses

  has_many :doses
  has_many :ingredients, through: :doses
  validates :name, presence: true
  validates :name, uniqueness: true

  mount_uploader :photo, PhotoUploader
  
  private

  def destroy_doses
    doses.destroy_all
  end
end
