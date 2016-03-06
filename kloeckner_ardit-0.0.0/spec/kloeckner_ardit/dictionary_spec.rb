require 'spec_helper'

describe KloecknerArdit::Dictionary do

  context "random word will be returned from Dictionary" do
    it "should have length between 4 and 9 characters" do
      expect(KloecknerArdit::Dictionary.get.length).to be_within(2.5).of(6.5)
    end
  end
end
