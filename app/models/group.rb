# frozen_string_literal: true

class Group < ApplicationRecord
  #has_and_belongs_to_many :entities
  belongs_to :user

  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
end
