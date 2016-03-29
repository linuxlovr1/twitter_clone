require 'rails_helper'

feature 'log in', js: true do 
    before(:each) do 
      visit root_path
  end

  scenario 'clicks log in' do 
    click_link('Login')
    click_link('Sign up')
    fill_in('Email', with: "test@email.com")
    fill_in('First name', with: 'John')
    fill_in('Last name', with: 'Doe')
    fill_in('Password', with: 'password')
    fill_in('Password confirmation', with: 'password')
    click_button("Sign up")
    click_button('New Tweet')
    binding.pry
  end
end