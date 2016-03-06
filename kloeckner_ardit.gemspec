# coding: utf-8
lib = File.expand_path('../lib/kloeckner_ardit', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = 'kloeckner_ardit'
  s.version       = '0.0.0'
  s.date          = '2016-03-04'
  s.summary       = "Make a collage from images from Flickr"
  s.description   = %q{
                        * accepts a list of search keywords as arguments
                        * queries the Flickr API for the top-rated image for each keyword
                        * downloads the results
                        * crops them rectangularly
                        * assembles a collage grid from ten images and
                        * writes the result to a user-supplied filename

                        If given less than ten keywords, or if any keyword fails to
                        result in a match, retrieve random words from a dictionary
                        source such as `/usr/share/dict/words`. Repeat as necessary
                        until you have gathered ten images.
                      }
  s.authors       = ["Ardit Hamzai"]
  s.email         = ["ardihamza@gmail.com"]
  s.files         = `git ls-files -z`.split("\x0")
  s.executables   << "kloeckner_ardit"
  s.require_paths = ["config", "lib/kloeckner_ardit"]
  s.homepage      = ""
  s.license       = 'MIT'

  s.add_development_dependency "rspec"
  s.add_runtime_dependency "flickr_fu"
  s.add_runtime_dependency "rmagick"
end