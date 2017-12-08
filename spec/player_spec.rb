require './lib/player.rb'
require 'rspec'

describe Player do
  subject(:sam) { Player.new('Sam') }

  describe '#name' do
    it 'returns the players name' do
    expect(sam.name).to eq('Sam')
    end
  end

  describe '#hitpoints' do
    it 'reduces a player\'s hitpoints by 10' do
    expect(sam.reduce_hp).to eq(90)
    end
  end


end
