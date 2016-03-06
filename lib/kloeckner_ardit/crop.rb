module KloecknerArdit
	class Crop
		def self.square(photo)
			image =  Magick::ImageList.new
			urlimage = open("#{photo.url(:medium)}")
		  image.from_blob(urlimage.read)
		  image.crop(0,0,200,200)
		end
	end
end