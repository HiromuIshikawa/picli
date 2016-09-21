require "picli/version"

module Picli
  dir = File.dirname(__FILE__) + "/picli"

  autoload :VERSION,    "#{dir}/version.rb"
  autoload :Config,     "#{dir}/config.rb"
end
