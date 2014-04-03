$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "pdf_viewer_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "pdf-viewer-rails"
  s.version     = PdfViewerRails::VERSION
  s.authors     = ["Enrique Alcantara"]
  s.email       = ["enrique@hvst.com"]
  s.homepage    = "http://www.hvst.com"
  s.summary     = "pdf files viewer for Rails using Mozilla PDF.js engine"
  s.description = "pdf files viewer for Rails using Mozilla PDF.js engine"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.17"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
