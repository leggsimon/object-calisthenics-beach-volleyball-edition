require 'spec_helper'

describe "BeachVollyball" do
  context 'creating a team' do
    it 'has a maximum of 10 players' do
      team   = Team.new
      player = Player.male
      5.times { team.add Player.male }
      5.times { team.add Player.female }
      expect{ team.add player }.to raise_error "Team is full"
    end

    it 'puts the player in the team' do
      team   = Team.new
      player = Player.male
      team.add player
      expect(player).to be_in_a_team
    end

    it 'must have at least 2 male players' do
      team   = Team.new
      8.times { team.add Player.female }
      expect(team).not_to be_valid
    end

    it 'must have at least 2 female players' do
      team   = Team.new
      8.times { team.add Player.male }
      expect(team).not_to be_valid
    end
  end
end
