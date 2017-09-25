module LaserBots
  module Concole
    class Command
      end
  end

  module World
    class Player
      attr_reader :name
      def initialize(name)
      @name = name
      end
    end
    end
  class Robot
    attr_reader :name
    def initialize(name)
      @name = name
    end
    def target_player(name)
      Player.new(name)
    end
  end
end
player = LaserBots::World::Player.new("Andriy")
puts player.name