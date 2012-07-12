require 'spec_helper'

describe Card do
  describe ".random" do
    subject { Card.random }
    it "should calls sample" do
      Card.should_receive(:all).and_return [1]
      subject.should == 1
    end
  end
end
