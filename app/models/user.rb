class User < ApplicationRecord
	has_many :groups
	has_many :entities, foreign_key: 'author_id'

	validates :name, presence: true, length: { minimum: 3, maximum: 100 }
	validates :email, presence: true, length: { minimum: 3, maximum: 100 }
  end