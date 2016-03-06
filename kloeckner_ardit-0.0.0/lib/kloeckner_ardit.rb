require 'flickr_fu'
require 'rmagick'
include Magick

class	Main

	def initialize
		@images =  Magick::ImageList.new
		@crops =  Magick::ImageList.new
		@crop_width = 200
		@crop_height = 200
	end

	def get_keywords
		print "Enter keywords: "
		input = gets.chomp
		keywords = input.split(' ')
	end

	def dictionary
		File.read('/usr/share/dict/words').lines.select {|l| (4..9).cover?(l.strip.size)}.sample.strip
	end

	def search(keyword)
		flickr = Flickr.new("flickr.yml")
		flickr.photos.search(text: keyword, media: :photos, per_page: 1, sort: "interestingness-desc").first
	end

	def crop(photo)
		urlimage = open("#{photo.url(:medium)}")
	  @images.from_blob(urlimage.read)
	  @images.crop(0,0,@crop_width,@crop_height)
	end

	def montage(crops)
		margins = 10
		grid = "5x2"
		bg_color = "#000000"
		crops.montage {
			self.geometry = "#{@crop_width}x#{@crop_height}+#{margins}+#{margins}"
		  self.tile = grid
		  self.background_color = bg_color
		}
	end

	def collage
		for i in 0..9
			if keywords[i].nil?
				keywords[i] = dictionary
				puts keywords[i]
			end
			while search(keywords[i]).nil?
				keywords[i] = dictionary
				search(keywords[i])
			end
			image = search(keywords[i])
			@crops << crop(image)
		end
		collage = montage(@crops)
	end

	def save_file
		print "Enter filename to save: "
		file = gets.chomp
		collage.write("#{file}.jpg")
	end

end