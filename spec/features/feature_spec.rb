

Capybara.app = BattleApp

# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#   visit('/')
#   expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'Entering player names' do
  scenario 'Allows users to input their names' do
    sign_in_and_play
    expect(page).to have_content 'player_1_name vs player_2_name'
  end


end
