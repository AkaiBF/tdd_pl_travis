require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "Execute nutrientes" 
task :nutrientes do
    sh "ruby lib/nutrientes.rb"
end