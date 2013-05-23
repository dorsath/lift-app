require 'spec_helper'

describe Lifter do
  it "gets created with a name" do
    Lifter.new(name: "Ronald").name.should eq("Ronald")
  end

  it "requires a name" do
    expect { Lifter.new }.to raise_exception
  end
end

