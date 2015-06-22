require 'spec_helper'

feature 'User arrives on the main page' do
  scenario 'and fill in the form with their thoughts' do
    visit '/'
    expect(page).to have_content 'I like the way...'
    fill_in 'thought_question1', with: 'you move!'
    click_button 'Create Thought'
    expect(Thought.count).to eq 1
  end
end