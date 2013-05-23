class Exercise

  attr_accessor :type

  def initialize(type: nil)
    raise "NoExerciseTypeGiven" if type.nil?
    self.type = type
  end

  def self.types
    %i{squat}
  end

end
