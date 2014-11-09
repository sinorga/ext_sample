require "bundler/gem_tasks"
require "rake/extensiontask"
require 'rspec/core/rake_task'

Rake::ExtensionTask.new "ext_sample" do |ext|
  ext.lib_dir = "lib/ext_sample"
end

RSpec::Core::RakeTask.new(:spec)

task :spec => :compile

task :default => :spec
