def build_match
  team1 = build_team
  team2 = build_team
  Match.new(team1, team2)
end

def build_team
  add_players_to_team Team.new
end

def add_players_to_team team
  4.times do
    team.add Player.male
    team.add Player.female
  end
  team
end
