require 'spec_helper'

describe KloecknerArdit::Crop do

  context "image will be returned from Crop" do
    it "should have width 200" do
      expect(KloecknerArdit::Crop.square(KloecknerArdit::FlickrApi.search("Germany")).columns).to eq 200
    end

    it "should have height 200" do
      expect(KloecknerArdit::Crop.square(KloecknerArdit::FlickrApi.search("Germany")).rows).to eq 200
    end
  end

end

