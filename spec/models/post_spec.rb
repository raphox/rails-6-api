# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'Associations' do
    it { should have_many(:comments) }
  end

  context 'Validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
  end
end
