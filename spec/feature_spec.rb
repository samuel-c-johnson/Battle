require 'capybara/rspec'
require_relative '../app.rb'

Capybara.app = BattleApp

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
  visit('/')
  expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Entering player names' do
  scenario 'Allows users to input their names' do
    visit('/')
    fill_in (:player_1_name, with: 'Sam')
    fill_in (:player_2_name, with: 'Valentina')
    click_button 'Submit'
    expect(page).to have_content 'Sam vs. Valentina'
  end
end
