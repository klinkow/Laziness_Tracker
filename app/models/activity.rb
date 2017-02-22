class Activity < ApplicationRecord
  has_and_belongs_to_many :users
  validates :name, :presence => true
  validates :calories, :presence => true
end
