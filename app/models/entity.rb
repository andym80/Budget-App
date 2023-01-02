class Entity < ApplicationRecord
	belongs_to :authorId, class_name:'User'
	has_and_belongs_to_many :groups

  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :email, presence: true, length: { minimum: 3, maximum: 100 }
  validates :authorId, presence: true
end
