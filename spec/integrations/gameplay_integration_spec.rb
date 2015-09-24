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

  context 'match' do
    it 'requires 2 valid teams' do
      match = build_match
      expect(match).to be_able_to_go_ahead
    end

    it 'can suspend a player' do
      team1  = build_team
      team2  = build_team
      match = Match.new(team1, team2)
      player = Player.male
      team1.add player
      match.suspend_player 3, player
      expect(player).not_to be_available
    end

    it 'checks availibility of players' do
      team1  = build_team
      team2  = build_team
      player = Player.male
      player.suspend(3)
      team1.add player
      match = Match.new(team1, team2)
      expect(match).not_to be_able_to_go_ahead
    end
  end
end
