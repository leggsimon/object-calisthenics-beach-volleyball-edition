class Match

  attr_reader :team1, :team2

  def initialize team1, team2
    @team1 = team1
    @team2 = team2
  end

  def able_to_go_ahead?
    team1.valid? && team2.valid? && no_players_are_suspended
  end

  def suspend_player suspension_length, player
    player.suspend(suspension_length)
  end

  private

  def no_players_are_suspended
    check_player_availibility(team1) && check_player_availibility(team2)
  end

  def check_player_availibility team
    team.players.all? { |p| p.available? }
  end

end
