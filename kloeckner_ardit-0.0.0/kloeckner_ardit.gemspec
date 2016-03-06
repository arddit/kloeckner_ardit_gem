# coding: utf-8

Gem::Specification.new do |s|
  s.name        = 'kloeckner_ardit'
  s.version     = '0.0.0'
  s.date        = '2016-03-04'
  s.summary     = "Make a collage from images from Flickr"
  s.description = %q{
                  * accepts a list of search keywords as arguments
                  * queries the Flickr API for the top-rated image for each keyword
                  * downloads the results
                  * crops them rectangularly
                  * assembles a collage grid from ten images and
                  * writes the result to a user-supplied filename

                  If given less than ten keywords, or if any keyword fails to
                  result in a match, retrieve random words from a dictionary
                  source such as `/usr/share/dict/words`. Repeat as necessary
                  until you have gathered ten images.}
  s.authors     = ["Ardit Hamzai"]
  s.email       = "ardihamza@gmail.com"
  s.files       = `git ls-files -z`.split("\x0")
  s.homepage    = ""
  s.license     = 'MIT'
end