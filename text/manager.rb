module Text
  # Handle text operations
  class Manager
    PATH = 'text/'
    BLOCK = {
      help: 'help.txt'
    }.freeze
    GRAPHIC = {
      banner: 'banner.txt',
      banner_2: 'banner_2.txt'
    }.freeze

    class << self
      %i(block graphic).each do |type|
        define_method "fetch_#{type}".to_sym do |entry|
          File.read(file_path(type, entry))
        end
      end

      private

      def file_path(type, entry)
        asset = const_get(type.upcase)[entry]
        File.join(PATH, type.to_s, asset) unless asset.nil?
      end
    end
  end
end
