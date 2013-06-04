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

  context ".sets" do
    subject { Exercise.new(type: :squat) }
    it "has a set of weight numbers" do
      subject.sets.should eq([])
    end

    it "requires sets to an array of numbers" do
      expect { subject.sets << ["h", "e", "l", "l", "o"] }.to raise_exception("ExerciseSetsWeightValuesNeedToBeNumeric")
      expect { subject.sets << "hello world" }.to raise_exception("ExerciseSetsNeedToBeAnArray")
    end

    it "knows the total weight of the whole exercise" do
      subject.sets << [30, 30, 30, 30]
      subject.sets << [50, 50, 50, 50]
      subject.weight.should eq(320)
    end
  end

  it "should fail now" do
    5.should eql(3)
  end

end
