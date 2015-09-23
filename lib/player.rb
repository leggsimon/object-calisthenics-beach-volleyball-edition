class Player

  attr_reader :gender

  def initialize gender
    @gender = gender
    @in_a_team = false
  end

  def in_a_team?
    in_a_team
  end

  def place_in_team
    self.in_a_team = true
  end

  private

  attr_accessor :in_a_team

  def self.male
    new :male
  end

  def self.female
    new :female
  end



end
