feature 'Attack' do
  scenario 'An "attack" button is rendered after signing in' do
    sign_in_and_play
    find_button("Attack player_2_name").visible?
  end

  
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack player_2_name')
    visit '/attack'
    expect(page).to have_content ('player_1_name attacked player_2_name')
  end

  # scenario 'Player 2 attacks player 1' do
  #   sign_in_and_play
  #   click_button('Attack player_1_name')
  #   expect(page).to have_content ('player_2_name attacked player_1_name!')
  # end


end
