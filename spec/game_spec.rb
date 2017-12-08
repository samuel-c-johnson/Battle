require './lib/game.rb'
require 'rspec'

describe Game do
  subject(:game) {Game.new(player_1, player_2)}
  let(:player_1) {double :player}
  let(:player_2) {double :player}

  describe '#damage' do
    it 'reduces a player\'s hitpoints by 10' do
    expect(player_2).to receive(:reduce_hp)
    game.damage(player_2)
    end
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end


end
