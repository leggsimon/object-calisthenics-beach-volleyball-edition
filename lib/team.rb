class Team

  RULES = {
    max_player_count: 10,
    min_player_count:  7
  }

  def initialize
    @players = []
  end

  def add player
    raise "This player is already in a team" if player.in_a_team?
    raise "Team is full" unless player_count_below_maximum?
    players << player
    player.place_in_team self
  end

  def valid?
    full_enough? && !full? && sufficient_gender_balance
  end

  private

  def sufficient_gender_balance
    player_count(:male) >= 2 && player_count(:female) >= 2
  end

  def player_count gender
    players.select { |p| p.gender == gender }.count
  end

  def full?
    players.count == max_player_count
  end

  def full_enough?
    players.count >= min_player_count
  end

  def player_count_below_maximum?
    players.count < max_player_count
  end

  def max_player_count
    RULES[:max_player_count]
  end

  def min_player_count
    RULES[:min_player_count]
  end

  attr_reader :players

end
