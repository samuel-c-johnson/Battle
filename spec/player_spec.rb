require './lib/player.rb'
require 'rspec'

describe Player do
  subject(:sam) { Player.new('Sam') }

  describe '#name' do
    it 'returns the players name' do
    expect(sam.name).to eq('Sam')
    end
  end
end
