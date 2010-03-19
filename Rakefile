# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'tasks/rails'
require File.dirname(__FILE__) + "/lib/cms/version.rb"

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "browsercms"
    gem.version = Cms::VERSION
    gem.summary = %Q{BrowserCMS is a general purpose, open source Web Content Management System (CMS) written in Ruby on Rails. Designed for web developers who want to create great looking websites while using standard Rails tools for customizing it. }
    gem.description = %Q{BrowserCMS is a general purpose, open source Web Content Management System (CMS) written in Ruby on Rails. Designed for web developers who want to create great looking websites while using standard Rails tools for customizing it.}
    gem.email = "github@browsermedia.com"
    gem.homepage = "http://www.browsercms.org"
    gem.authors = ["BrowserMedia"]
    gem.rubyforge_project = 'browsercms'
    gem.executables = ['browsercms', 'bcms']
    gem.files = Dir["rails/*.rb"]
    gem.files += Dir["browsercms.gemspec"]
    gem.files += Dir["doc/app/**/*"]
    gem.files += Dir["doc/guides/html/**/*"]
    gem.files += Dir["app/**/*"]
    gem.files += Dir["db/migrate/[0-9]*_*.rb"]
    gem.files += Dir["db/demo/**/*"]
    gem.files += Dir["lib/**/*"]
    gem.files += Dir["rails_generators/**/*"]
    gem.files += Dir["public/stylesheets/cms/**/*"]
    gem.files += Dir["public/javascripts/jquery*"]
    gem.files += Dir["public/javascripts/cms/**/*"]
    gem.files += Dir["public/bcms/**/*"]
    gem.files += Dir["public/site/**/*"]
    gem.files += Dir["public/images/cms/**/*"]
    gem.files += Dir["public/themes/**/*"]
    gem.files += Dir["templates/*.rb"]

    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

# BrowserCMS gem will only be released to Gemcutter/rubygems. No longer going to RubyForge.
Jeweler::GemcutterTasks.new


