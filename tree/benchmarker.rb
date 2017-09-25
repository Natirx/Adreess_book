class SimpleBenchmarker
    def run(desciption, &block)
        start_time = Time.now
        block.call
        end_time = Time.now
        elapsed = end_time - start_time
        puts "\n"
        puts "#{desciption} result"
        puts "Elapsed time: #{elapsed} seconds"
    end
end

benchmarker = SimpleBenchmarker.new
benchmarker.run "sleep a random amount of time" do
    5.times do 
        puts "."
        sleep(rand(0.1..1.0))
    end
end