# frozen_string_literal: true

module System
  # Render the result of a given execution
  class Printer
    class << self
      # Print a base prompt
      # TODO: Add some context here. Clues, turns, etc.
      def prompt
        print '> '
      end

      def banner
        puts Text::Manager.fetch_graphic(:banner)
      end

      def help
        puts Text::Manager.fetch_block(:help)
      end

      # Print the inventory, preferably, in a very fashionable way
      def inventory
      end

      def debug(payload, message = nil)
        puts "[DEBUG]#{": #{message}" if message}"
        ap payload
      end

      private

      # Extract console printing. Add options
      # This should support ncurses, probably
      def console_print(line)
      end
    end
  end
end
