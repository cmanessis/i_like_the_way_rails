require 'rails_helper'

def signup(email)
  visit ('/')
  click_link('Sign up')
  fill_in("Email", with: email)
  fill_in("Password", with: 'testtest')
  fill_in("Password confirmation", with: 'testtest')
  click_button('Sign up')
end

def signin(email)
  visit '/'
  click_link('Sign in')
  fill_in("Email", with: email)
  fill_in("Password", with: 'testtest')
  click_button('Log in')
end

def add_target(name)
  visit '/'
  fill_in 'target_name', with: 'Joanne'
  click_button 'Create Target'
end