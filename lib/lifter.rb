class Lifter
  attr_reader :name
  def initialize(name: nil)
    raise NoNameGiven if name.nil?
    self.name = name
  end

  private

  attr_writer :name
end
