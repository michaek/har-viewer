require "bundler"
require "rake/clean"

require_relative "lib/har_viewer"

desc "Starts HARViewer"
task :start => [:environment, :setup] do
  HARViewer.start
end

desc "Sets up HARViewer"
task :setup => ["public", "public/hars"]

# Extracts the bare-bones, non-PHP version of HAR Viewer
# (http://code.google.com/p/harviewer/) included in the HAR gem
# (https://github.com/jarib/har).
file "public" do
  require "bundler/cli"
  source = Gem::Specification.find_by_name("har").gem_dir + "/lib/har/viewer"
  FileUtils.cp_r(source, HARViewer.pathname)
end

directory "public/hars"
CLOBBER.include("public")

task :environment do
  Bundler.setup
  require "webrick"
end
