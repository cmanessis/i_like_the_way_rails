require 'spec_helper'

feature 'User arrives on the main page' do
  scenario 'and fill in the form with their thoughts' do
    visit '/'
    expect(page).to have_content 'I like the way...'
    fill_in 'thoughts', with: 'you move!'
    click_button 'Send'
    expect(current_path).to eq '/submit'
    expect(page).to have_content 'You said: I like the way you move!'
  end
end