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
    it 'is not valid without a password' do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a password confirmation' do
      subject.password_confirmation = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without matching password and confirmation' do
      subject.password = '456'
      expect(subject).to_not be_valid
    end

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end
  end
end

