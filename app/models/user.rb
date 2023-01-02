class User < ApplicationRecord
	has_many: entities

	validates : name, presence: true, length: {minimum: 3, maximum: 100 }
	validates : email, presence: true, length: {minimum: 3, maximum: 100 }
  end