require 'bundler/setup'
Bundler.require(:default)

require 'em-resque/tasks'
require 'debugger'

ROOT = Dir.pwd

namespace :resque do
  task :setup do
    ENV['QUEUE'] ||= '*'

    path = File.join(ROOT, 'lib', 'async_workers', '**', '*.rb')
    Dir.glob(path).sort.each do |job|
      require job
    end
  end
end

