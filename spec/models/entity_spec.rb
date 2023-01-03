# frozen_string_literal: true

require_relative '../config/environment.rb'
require 'database_cleaner'
require 'rails_helper'

RSpec.describe Entity, type: :model do
  before(:each) do
    @entity = FactoryBot.create(:entity)
  end

  context 'validation' do
    it 'is valid with valid attributes' do
      expect(@entity).to be_a(Entity)
      expect(@entity).to be_valid
    end

    describe '#name' do
      it 'should not be valid without name' do
        bad_entity = FactoryBot.build(:entity, name: nil)
        expect(bad_entity).not_to be_valid
        expect(bad_entity.errors.include?(:name)).to eq(true)
      end
    end

    describe '#email' do
      it 'should not be valid without email' do
        bad_entity = FactoryBot.build(:entity, email: nil)
        expect(bad_entity).not_to be_valid
        expect(bad_entity.errors.include?(:email)).to eq(true)
      end
    end

    describe '#authorId' do
      it 'should not be valid without authorId' do
        bad_entity = FactoryBot.build(:entity, authorId: nil)
        expect(bad_entity).not_to be_valid
        expect(bad_entity.errors.include?(:authorId)).to eq(true)
      end
    end
  end

  context 'associations' do
    describe 'groups' do
      it 'should have many groups' do
        association = Entity.reflect_on_association(:groups)
        expect(association.macro).to eq(:has_and_belongs_to_many)
      end
    end

    describe 'authorId' do
      it 'should belong to authorId' do
        association = Entity.reflect_on_association(:authorId)
        expect(association.macro).to eq(:belongs_to)
      end
    end
  end
end
