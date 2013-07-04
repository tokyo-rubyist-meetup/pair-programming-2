require 'rspec/core/rake_task'

task :default => :benchmark

task :benchmark do
  require 'benchmark'
  $:.unshift File.expand_path('../lib', __FILE__)

  require 'postal_code'
  codes = File.readlines(File.expand_path('../data/random_codes', __FILE__)).map {|c| c.strip!}

  n = 100

  Benchmark.benchmark(Benchmark::CAPTION, 25) do |x|
    x.report("same postal code") do
      n.times do
        PostalCode.find("906-0601")
      end
    end
    x.report("different postals code") do 
      n.times do
        random_code = codes[rand(codes.size)]
        PostalCode.find(random_code)
      end
    end
    x.report("invalid postal code") do
      n.times do
        PostalCode.find("999-9999")
      end
    end
  end
end
