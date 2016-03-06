module KloecknerArdit
	class Montage
		def self.create(crops)
			crop_width = 200
			crop_height = 200
			margins = 10
			grid = "5x2"
			bg_color = "#000000"
			crops.montage {
				self.geometry = "#{crop_width}x#{crop_height}+#{margins}+#{margins}"
			  self.tile = grid
			  self.background_color = bg_color
			}
		end
	end
end