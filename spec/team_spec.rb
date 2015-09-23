require 'spec_helper'

describe Team do

  subject(:team) { Team.new }

  it 'not valid with less than 7 players' do
    expect(team).not_to be_valid
  end

  it 'is valid with minimum 7 and maximum 10 players' do
    male_player   = double :player, :in_a_team? => false, place_in_team: nil, gender: :male
    female_player = double :player, :in_a_team? => false, place_in_team: nil, gender: :female
    5.times { team.add male_player }
    5.times { team.add female_player }
    expect(team).to be_valid
  end

  it 'cannot add a player that is already in a team' do
    player = double :player, :in_a_team? => true
    expect { team.add player }.to raise_error "This player is already in a team"
  end
end
