feature 'Shows players hit points' do
  scenario 'Allows player 1 to see their hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'player_1_name HP: 100'
  end
  scenario 'Allows player 2 to see their hit points' do
    sign_in_and_play
    expect(page).to have_content 'player_2_name HP: 100'
  end

end
