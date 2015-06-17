require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = ['--color', '--format', 'documentation', '--require', 'spec_helper']
end

desc "Open an irb session preloaded with this library"
task :console do
  sh "irb -rubygems -I lib -r tesla_api.rb -rdotenv"
end

task default: :spec
