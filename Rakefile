namespace :groonga do
  desc "Run benchmark"
  task :benchmark do
    sh("docker", "build",
       "-t", "benchmark",
       "./dockerfiles/almalinux-9/")
    sh("docker", "run",
       "--rm",
       "-v", "#{Dir.pwd}:/benchmark",
       "--name", "benchmark",
       "benchmark",
       "ruby", "/benchmark/bin/groonga-benchmark")
  end
end
