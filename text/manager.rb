module Text
  # Handle text operations
  class Manager
    PATH = 'text/'

    class << self
      def story(part, section)
        YAML.load(File.read(file_path))
      end

      %i(block graphic).each do |type|
        define_method "fetch_#{type}".to_sym do |entry|
          begin
            File.read(file_path(type, entry))
          rescue Errno::ENOENT => e
            missing_file = e.message.split('-').last.strip
            "Missing file: #{missing_file}"
          end
        end
      end

      private

      def file_path(type, entry, extension='txt')
        File.join(PATH, type.to_s, "#{entry}.#{extension}")
      end
    end
  end
end
