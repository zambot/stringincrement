require 'stringincrement'

describe Stringincrement do
  it "should install itself into String" do
      "random string".respond_to?(:increment).should be_true
  end

  it "should increase the last number" do
    "1".increment.should == "2"
    "9".increment.should == "10"
    "aa1".increment.should == "aa2"
    "aa9".increment.should == "aa10"
  end

  it "should increase strings (if no number is found)" do
   "a".increment.should == "b"
   "az".increment.should == "ba"
   "azzz".increment.should == "baaa"
  end
end
