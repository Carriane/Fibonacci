require 'rspec'
require 'fibonacci'

describe Case1 do
  context "Case1 calculation methodology" do
    it "calculates fibonacci(32)" do
      Case1.fibonacci(20).should == 6765
    end
  end
end
