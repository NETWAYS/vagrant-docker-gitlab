task default: %w[deploy]

desc 'Deploy Puppet code via r10k'
task :deploy do
  require 'r10k/cli'
  require 'colored'
  R10K::CLI.command.run(%w(puppetfile install -v))
end

desc 'Clean deployed Puppet code'
task :clean do
  FileUtils.rm_rf('modules/')
end
