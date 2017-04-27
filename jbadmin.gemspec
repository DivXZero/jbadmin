$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jbadmin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jbadmin"
  s.version     = Jbadmin::VERSION
  s.authors     = ["Nick Brabant"]
  s.email       = ["nick@juliabalfour.com"]
  s.homepage    = "https://github.com/juliabalfour/jbadmin"
  s.summary     = "Rails plugin for admin sites"
  s.description = "Rails plugin for admin sites"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.2"
  s.add_dependency "sass-rails", "~> 5.0.6"
  s.add_dependency "jquery-rails", "~> 4.3.1"
  s.add_dependency "haml", "~> 4.0.7"
  s.add_dependency "font-awesome-sass", "~> 4.7.0"
  s.add_dependency "gravatar_image_tag", "~> 1.2"
  s.add_dependency "breadcrumbs_on_rails", "~> 3.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "bump"
end
