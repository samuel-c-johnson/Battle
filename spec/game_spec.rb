require './lib/game.rb'
require 'rspec'

describe Game do
  subject(:game) {Game.new}
  let(:player_1) {double :player}
  let(:player_2) {double :player}

  describe '#damage' do
    it 'reduces a player\'s hitpoints by 10' do
    expect(player_2).to receive(:hitpoints)
    game.attck(player_2)
    end
  end

end
