# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'distance_in_weeks/version'

Gem::Specification.new do |spec|
  spec.name          = "distance_in_weeks"
  spec.version       = DistanceInWeeks::VERSION
  spec.authors       = ["Nayana Bhagat,Vaibhav Kholi,Ankita Kanitkar,Milind Singh,Prabhat Thapa,Swarup Mitra"]
  spec.email         = ["ankitakanitkar@gmail.com"]
  spec.summary       = %q{returns distance of time in weeks}
  spec.description   = %q{returns distance of time in weeks}
  spec.homepage      = "https://github.com/Gemathon-Lapidarists/distance_in_weeks"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "week_calc"
end
