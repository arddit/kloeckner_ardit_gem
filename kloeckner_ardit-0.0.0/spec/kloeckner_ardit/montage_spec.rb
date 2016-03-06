require 'spec_helper'

describe KloecknerArdit::Montage do

	before do
		@crops = Magick::ImageList.new
		for i in 0..9
		  img = Magick::Image.new(200,200) { self.background_color = "#00000#{i}" }
		  @crops << img
		end
	end

  context "a large composite image will be returned" do
    it "should have width of 5 crops plus margins" do
      expect(KloecknerArdit::Montage.create(@crops).columns).to eq 1100
    end
  end
end
