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
      team1 = Team.new
      team2 = Team.new
      4.times do
        team1.add Player.male
        team1.add Player.female
        team2.add Player.male
        team2.add Player.female
      end
      match = Match.new(team1, team2)
      expect(match).to be_able_to_go_ahead
    end

    it 'can suspend a player' do
      team1  = Team.new
      team2  = Team.new
      player = Player.male
      4.times do
        team1.add Player.male
        team1.add Player.female
        team2.add Player.male
        team2.add Player.female
      end
      team1.add player
      match = Match.new(team1, team2)
      match.suspend_player 3, player
      expect(player).not_to be_available
    end

    it 'checks availibility of players' do
      team1  = Team.new
      team2  = Team.new
      player = Player.male
      player.suspend(3)
      4.times do
        team1.add Player.male
        team1.add Player.female
        team2.add Player.male
        team2.add Player.female
      end
      team1.add player
      match = Match.new(team1, team2)
      expect(match).not_to be_able_to_go_ahead
    end
  end
end
