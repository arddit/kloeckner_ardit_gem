require 'flickr_fu'

module KloecknerArdit
	class FlickrApi
		def self.search(keyword)
			flickr = Flickr.new(YAML::load_file(File.join('./config/flickr.yml')))
			flickr.photos.search(text: keyword, media: :photos, per_page: 1, sort: "interestingness-desc").first
		end
	end
end