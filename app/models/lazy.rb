class Lazy < ApplicationRecord
  has_and_belongs_to_many :users
  validates :name, presence => true
  validates :points, presence => true
end
