class TrainingDay

  attr_accessor :date, :exercises
  attr_reader :lifter

  def initialize(date: nil, lifter: nil)
    raise "NoLifterGiven" if lifter.nil?
    self.lifter = lifter
    self.date = date || Date.today
    self.exercises = []
  end

  private

  attr_writer :lifter
end
