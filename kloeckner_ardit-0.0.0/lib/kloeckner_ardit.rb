require 'kloeckner_ardit/dictionary'
require 'kloeckner_ardit/flickr_api'
require 'kloeckner_ardit/crop'
require 'kloeckner_ardit/montage'
require 'rmagick'
include Magick

module KloecknerArdit
	class	Kloeckner

		def self.begin
			dictionary = Dictionary.new
			flickr = FlickrApi.new
			crop = Crop.new
			crops =  Magick::ImageList.new
			montage = Montage.new

			print "Enter keywords: "
			input = gets.chomp
			keywords = input.split(' ')

			for i in 0..9
				if keywords[i].nil?
					keywords[i] = dictionary.class.get
				end
				while flickr.class.search(keywords[i]).nil?
					keywords[i] = dictionary.class.get
				end
				image = flickr.class.search(keywords[i])
				crops << crop.class.square(image)
			end
			collage = montage.class.create(crops)

			print "Enter filename to save: "
			file = gets.chomp
			collage.write("#{file}.jpg")
		end
	end
end