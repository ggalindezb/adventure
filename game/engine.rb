module Game
  # Put the game's actual logic here
  # Try to keep it as simple as possible, preferably one interface per category
  class Engine
    def initialize
      # This should contain the current status of the game
      # Preferrably through codes
      @status = :a1
    end

    def current_context
      Text::Manager
    end
  end
end
