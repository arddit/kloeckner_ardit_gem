require 'spec_helper'

describe KloecknerArdit::FlickrApi do
  context "results with attribute from Flickr API Search" do
    it "should return media type photo" do
      expect(KloecknerArdit::FlickrApi.search("Germany").media).to eq "photo"
    end
  end

  context "results without attribute from Flickr API Search" do
    it "should return media type photo even when attribute nil" do
      expect(KloecknerArdit::FlickrApi.search(nil).media).to eq "photo"
    end
  end
end