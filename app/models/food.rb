class Food < ApplicationRecord
  validates :name, :presence => true
  validates :calories, :presence => true

    has_and_belongs_to_many :users
end
