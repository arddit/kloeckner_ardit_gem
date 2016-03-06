module KloecknerArdit
	class Dictionary
		def self.get
			File.read('/usr/share/dict/words').lines.select {|l| (4..9).cover?(l.strip.size)}.sample.strip
		end
	end
end