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

    it 'is not valid without a first name' do
      subject.first_name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a last name' do
      subject.last_name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without an email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it "is not valid if password length less than 3 characters" do
      subject.password = "12"
      subject.password_confirmation = "12"
      expect(subject).to_not be_valid
    end
  end
end

