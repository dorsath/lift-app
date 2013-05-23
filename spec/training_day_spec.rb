require 'spec_helper'


describe TrainingDay do

  let(:lifter) { double(:lifter) }

  context ".creation" do
    before do
      Date.stub(:today) { "Todays date" }
    end

    it "accepts a date" do
      TrainingDay.new(lifter: lifter, date: Date.today).date.should eq(Date.today)
    end

    it "is given a date when you don't give it one!" do
      TrainingDay.new(lifter: lifter).date.should eq(Date.today)
    end

    it "requires a lifter" do
      expect { TrainingDay.new }.to raise_exception
    end
  end

  context ".adding exercises" do
    subject { TrainingDay.new(lifter: lifter) }
    it "has many exercises" do
      subject.exercises.should eq([])
    end
  end

end
