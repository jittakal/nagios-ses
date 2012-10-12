# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nagios-ses/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nikhil Lanjewar"]
  gem.email         = ["nikhil@lanjewar.com"]
  gem.description   = %q{Gem to allow Nagios send notifications via Amazon SES}
  gem.summary       = %q{Commands, utilities and library to use Amazon SES for sending Nagios notifications}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  #gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.executables << "ses-mail"
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "nagios-ses"
  gem.add_dependency "choice"
  gem.add_dependency "amazon-ses-mailer"
  gem.require_paths = ["lib"]
  gem.version       = Nagios::Ses::VERSION
end
