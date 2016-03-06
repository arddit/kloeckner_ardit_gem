Dir.glob('lib/*.rb') {|file| require File.basename(file)}

require 'kloeckner_ardit'
