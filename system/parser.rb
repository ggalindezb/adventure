# frozen_string_literal: true

module System
  # Parses the input of a command line
  class Parser
    class << self
      # TODO: Add a proper method lookup, preferably a hashed one. Maybe even a
      # configurable one.
      # TODO: Definitely not within the parser.
      # This will need something a bit better
      ACTIONS = %i[look get drop use].freeze

      def process(input)
        input.split(' ')
      end
    end
  end
end
