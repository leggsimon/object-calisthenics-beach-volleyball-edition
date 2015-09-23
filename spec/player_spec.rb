require 'spec_helper'

describe Player do

  let(:player) { Player.new(:male) }

  context 'gender' do
    it 'creates a male player' do
      player = Player.male
      expect(player.gender).to eq :male
    end

    it 'creates a female player' do
      player = Player.female
      expect(player.gender).to eq :female
    end
  end

  context 'placing in team' do
    it 'is not in a team by default' do
      expect(player).not_to be_in_a_team
    end

    it 'can be placed in a team' do
      team = double :team
      player.place_in_team team
      expect(player).to be_in_a_team
    end

    it 'knows what team it is in' do
      team = double :team
      player.place_in_team team
      expect(player.team).to eq team
    end
  end
end
