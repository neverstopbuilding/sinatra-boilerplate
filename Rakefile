# Encoding: utf-8

require 'rubocop/rake_task'

task default: :build

task build: [:clean, :prepare, :quality]

desc 'Runs standard build activities.'
task build_full: [:build]

desc 'Runs quality checks.'
task quality: [:rubocop]

Rubocop::RakeTask.new

desc 'Removes the build directory.'
task :clean do
  FileUtils.rm_rf 'build'
end
desc 'Creates a basic build directory.'
task :prepare do
  FileUtils.mkdir_p('build/spec')
end
