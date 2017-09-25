class Monster 
    attr_reader :name, :actions
    def initialize(name)
        @name = name
        @actions = {
            screams: 0,
            scares: 0,
            run: 0,
            hide: 0
        }
    end
    
    def say(&block)
        print "#{name} says... "
        yield
    end
    def inspect
        "<#{name}, #{actions}"
    end
    def print_scoreboard
        puts "-" *30
        puts "#{name} scoreboard"
        puts "-" * 30
        puts "- Scream: #{actions[:screams]}"
        puts "- Scares: #{actions[:scares]}"
        puts "- Run: #{actions[:run]}"
        puts "- Hide: #{actions[:hide]}"
    end

    def scream(&block)
        actions[:screams] += 1
        print "#{name} screams!"
        yield
    end

    def scare(&block)
        actions[:scares] += 1
        print "#{name} scares you!"
        yield
    end
    def run(&block)
        actions[:run] += 1
        print "#{name} runs"
        yield
    end
    def hide(&block)
        actions[:hide] += 1
        print "#{name}  hide!"
        yield self if block_given?
    end
end
monster = Monster.new("KRAB")
monster.say { puts "ARRRRRRRRRRRR"}
monster.scream do 
    puts "boo!"
end
monster.scare do
    puts "ho away"
end
monster.run do
    puts "ho run"
end
monster.hide do |m|
    puts "ho hide"
    puts m.inspect
end
puts "/n"
monster.print_scoreboard