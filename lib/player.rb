class Player

  attr_reader :gender, :team

  def initialize gender
    @gender = gender
    @in_a_team = false
    @team = nil
  end

  def in_a_team?
    in_a_team
  end

  def place_in_team team
    self.in_a_team = true
    self.team = team
  end

  private

  attr_writer :team

  attr_accessor :in_a_team

  def self.male
    new :male
  end

  def self.female
    new :female
  end



end
