require 'spec_helper'

feature 'User arrives on the main page' do
  scenario 'and fill in the form with their thoughts' do
    visit '/'
    signup("test@test.com")
    expect(page).to have_content 'I like the way...'
    fill_in 'thought_question1', with: 'you move!'
    expect { click_button 'Create Thought' }.to change { Thought.count }.by 1
  end

  scenario 'fills in the form and sees their thoughts on the submit page' do
    visit '/'
    signup("test@test.com")
    expect(page).to have_content 'I like the way...'
    fill_in 'thought_question1', with: 'you move!'
    click_button 'Create Thought'
    expect(page).to have_content 'said: I like the way you move!'
  end
end