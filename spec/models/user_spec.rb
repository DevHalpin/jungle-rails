require 'rails_helper'

RSpec.describe User, type: :model do
  subject {User.new(
    first_name: 'Test',
    last_name: 'User',
    email: 'user@test.com',
    password: '123',
    password_confirmation: '123'
  ) }

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  end
end

