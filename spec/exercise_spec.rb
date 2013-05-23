require "spec_helper"

describe Exercise do
  it "has a list of accepted exercise types" do
    Exercise.types.should_not be_empty
  end

  it "has a type" do
    Exercise.new(type: :squat).type.should eq(:squat)
  end

  it "requires a type which has to be one of a list" do
    expect { Exercise.new }.to raise_exception("NoExerciseTypeGiven")
  end

end
