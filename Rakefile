# encoding: utf-8

require 'rake/testtask'
Rake::TestTask.new do |t|
  t.libs << "spec"
  t.test_files = FileList['spec/**/*_spec.rb']
  t.verbose = true
end

require 'cucumber/rake/task'
Cucumber::Rake::Task.new

desc "Compile coffee-script files"
task :cc do
  puts 'coffee-script files compiling...'
  sh "coffee -b -c -o public/javascripts/coffee-scripts/ coffee-scripts/*.coffee"
end

desc 'Runs jasmine tests'
task :evergreen => :cc do
  puts 'Running jasmine tests...'
  sh "evergreen run"
end