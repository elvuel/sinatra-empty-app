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
  coffees_root = File.join(File.dirname(__FILE__), "coffee-scripts", '/')
  Dir.glob(File.join(File.dirname(__FILE__), "coffee-scripts", "**", "*.coffee")).each do |file|
    basename = File.basename(file)
    output_folder = file.gsub(%r(\A#{coffees_root}), '').gsub(basename, "")
    if File.read(file)[0..4] == "#bare"
      sh "coffee -b -c -o public/javascripts/coffee-scripts/#{output_folder} #{file}"
    else
      sh "coffee -c -o public/javascripts/coffee-scripts/#{output_folder} #{file}"
    end
  end
end

desc 'Runs jasmine tests'
task :evergreen => :cc do
  puts 'Running jasmine tests...'
  sh "evergreen run"
end