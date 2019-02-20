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
        # Fetch text
        # Print it
      end

      def help
        # Fetch help text
        # Print it
        puts ''
      end

      # Print the inventory, preferably, in a very fashionable way
      def inventory
      end

      def debug(payload)
        puts "[DEBUG] #{ap payload}"
      end

      private

      # Extract console printing. Add options
      # This should support ncurses, probably
      def console_print(line)
      end
    end
  end
end
