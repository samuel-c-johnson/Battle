feature 'Shows players hit points' do
  scenario 'Allows player 1 to see their hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'player_1_name HP: 100'
  end
  scenario 'Allows player 2 to see their hit points' do
    sign_in_and_play
    expect(page).to have_content 'player_2_name HP: 100'
  end

  scenario 'Reduces player 2\'s hitpoints by 10 after being attacked' do
    sign_in_and_play
    click_button("Attack")
    click_button("Continue")
    expect(page).to have_content "player_2_name HP: 90"
    end

end
