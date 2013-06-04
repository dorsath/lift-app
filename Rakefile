require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = "-c -f d"
  t.fail_on_error = false
end


task :default => :spec


namespace :test do
  task :ci do
    Rake::Task['spec'].invoke(":99")
  end
end
