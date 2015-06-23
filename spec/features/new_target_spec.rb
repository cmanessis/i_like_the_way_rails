require 'spec_helper'

feature 'User arrives on the main page' do
  scenario 'fills in the form to create a new target' do
    visit '/'
    signup("test@test.com")
    expect(page).to have_content 'I like the way...'
    fill_in 'target_name', with: 'Joanne'
    expect { click_button 'Create Target' }.to change { Target.count }.by 1
  end
end