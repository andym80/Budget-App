# Entity model
class Entity < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :groups

  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :amount, presence: true, length: { maximum: 1_000_000_000 }
end
