module Game
  # Put the game's actual logic here
  # Try to keep it as simple as possible, preferably one interface per category
  class Engine
    include AASM

    # TODO Fix this shit
    # This will get out of control pretty quickly. Meta the shit of out it using
    # a config file. ie.
    # main:
    #   - new_game
    #   - options
    #   - help
    #   - exit
    #
    # And make it read the options, traverse the keys, establish states for
    # every key, then set transitions from the key states to the value
    # entries
    aasm do
      state :main, initial: true
      state :new_game, :options, :help, :exit

      event :menu_new_game do
        transitions from: :main, to: :new_game
      end

      event :menu_options do
        transitions from: :main, to: :options
      end

      event :menu_help do
        transitions from: :main, to: :help
      end

      event :menu_exit do
        transitions from: :main, to: :exit
      end
    end

    def initialize
      # This should contain the current status of the game
      # Preferrably through codes
      @status = :main
    end

    def current_context
      Text::Manager
    end
  end
end
