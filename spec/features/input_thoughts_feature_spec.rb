require 'spec_helper'

feature 'User arrives on the main page' do
  scenario 'and fill in the form with their thoughts' do
    visit '/'
    signup("test@test.com")
    add_target 'Joanne'
    expect(page).to have_content 'Joanne'
    click_link 'Joanne'
    fill_in 'thought_question1', with: 'I like the way you move!'
    expect { click_button 'Create Thought' }.to change { Thought.count }.by 1
  end

  scenario 'fills in the form and sees their thoughts on the submit page' do
    visit '/'
    signup("test@test.com")
    add_target 'Joanne'
    click_link 'Joanne'
    fill_in 'thought_question1', with: 'I like the way you move!'
    click_button 'Create Thought'
    expect(page).to have_content 'Things I like about Joanne I like the way you move!'
  end
end