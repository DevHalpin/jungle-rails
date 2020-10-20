require 'rails_helper'

RSpec.feature "UserLogins", type: :feature, js: true do
  
  #SETUP
  before :each do
    @user = User.create!(
      first_name: 'Test',
      last_name: 'User',
      email: 'test@example.com',
      password: '123',
      password_confirmation: '123'
    )
  end

  scenario 'A user is logged in successfully and taken to the home page' do
      #ACT
      visit root_path
      find_link('Login').click
      fill_in('email', :with => 'test@example.com')
      fill_in('password', :with => '123')
      click_button 'Submit'
      
      #VERIFY
      expect(page).to have_content 'Logout'
      save_screenshot

  end
end
