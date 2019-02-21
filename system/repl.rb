# frozen_string_literal: true

module System
  # Command line for the Adventure program
  class Repl
    class << self
        # TODO: Print welcome
        # TODO: Print help
        # TODO: Enter loop
      def start
        System::Printer.banner
        System::Printer.help
        repl
      end

      def repl
        console_read
        repl
      end

      private

      def console_read
        System::Printer.prompt
        tokens = System::Parser.process(gets())
        System::Printer.debug(tokens, 'tokens')
      rescue BadCommandException
        console_print(Printer.help)
      rescue RuntimeError => e
        binding.pry
      end

      # def console_eval(tokens)
      #   console_print(tokens)
      # end

      # def console_print(data)
      #   puts "Tokens are: #{data}"
      #   print "\n"
      #   console_loop
      # end

      # def console_loop(_context = nil)
      #   console_read
      # end
    end
  end
end
