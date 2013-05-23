require 'spec_helper'


describe TrainingDay do
  context ".creation" do
    let(:lifter) { double(:lifter) }
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

end
