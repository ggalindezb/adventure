module Text
  # Handle text operations
  class Manager
    PATH = 'text/'
    ENTRIES = {
      banner: 'graphics/banner.txt'
    }.freeze

    class << self
      def fetch_graphic(entry)
        File.read(file_path(entry))
      end

      private

      def file_path(entry)
        PATH + ENTRIES[entry]
      end
    end
  end
end
