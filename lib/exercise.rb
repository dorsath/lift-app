class Exercise

  attr_accessor :type, :sets

  def initialize(type: nil)
    raise "NoExerciseTypeGiven" if type.nil?
    self.type = type
    self.sets = []

    class << @sets
      def <<(val)
        raise "ExerciseSetsNeedToBeAnArray" unless val.is_a?(Array)
        raise "ExerciseSetsWeightValuesNeedToBeNumeric" if val.reject { |d| d.is_a?(Fixnum) }.any?
        super(val)
      end
    end
  end

  def self.types
    %i{squat}
  end

  def weight
    sets.flatten.inject(:+)
  end


end
