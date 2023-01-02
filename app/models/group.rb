class Group < ApplicationRecord
	has_and_belongs_to_many: entities

	validates : name, presence: true, length: {minimum: 3, maximum: 100 }
  end