require "bundler/gem_tasks"

task :submodule do
  sh 'git submodule update --init' unless File.exist?('scrolld.js/README.md')
end

desc 'Clean the vendor directory'
task clean: :submodule do
  Rake.rake_output_message 'Cleaning up the vendor directory.'
  FileUtils.rm_rf 'vendor'
end

desc 'Generate the JavaScript assets'
task javascripts: :submodule do
  target_dir = 'vendor/assets/javascripts'
  FileUtils.mkdir_p target_dir
  Rake.rake_output_message 'Generating JavaScripts.'
  FileUtils.cp_r Dir['scrolld.js/*.js'], target_dir
end

desc 'Clean and then generate everything'
task assets: [:clean, :javascripts]
task default: :assets
