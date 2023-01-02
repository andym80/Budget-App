class Entity < ApplicationRecord
	belong_to: authorId, class_name:'User'
	has_and_belong_too_many: groups

  validates : name, presence: true, length: {minimum: 3, maximum: 100 }
  validates : amount, presence: true, length: { greather_than: 0 }
  validates : authorId, presence: true
end
