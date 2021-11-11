require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "standard/rake"

RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = ["--color", "--format", "documentation", "--require", "spec_helper"]
end

desc "Open an irb session preloaded with this library"
task :console do
  # Load all gems
  require "rubygems"
  require "bundler/setup"
  Bundler.require(:default)

  # Load the envs
  require "dotenv"
  Dotenv.load!

  # Set up a global client
  require "rotp"

  def mfa_code
    ROTP::TOTP.new(ENV["TESLA_TOTP"]).now
  end

  def client
    @client ||= TeslaApi::Client.new(access_token: ENV["TESLA_ACCESS_TOKEN"])
  end

  # Load IRB
  require "irb"
  require "irb/completion"

  IRB.conf[:PROMPT_MODE] = :SIMPLE
  IRB.conf[:AUTO_INDENT] = true

  ARGV.clear
  IRB.start
end

task default: :spec
