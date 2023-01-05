# group model
class Group < ApplicationRecord
  belongs_to :user
  # has_and_belongs_to_many :entities

  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :icon, presence: true
end
