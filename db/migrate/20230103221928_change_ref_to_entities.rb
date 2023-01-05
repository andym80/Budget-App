# frozen_string_literal: true

class ChangeRefToEntities < ActiveRecord::Migration[7.0]
  def change
    remove_column :entities, :authorId
    add_reference :entities, :user, foreign_key: true
  end
end
