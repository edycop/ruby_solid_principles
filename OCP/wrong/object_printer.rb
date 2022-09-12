# frozen_string_literal: true

module ObjectPrinter
  def print_to_console(object)
    print object.to_s
  end

  def print_to_file(filename, object)
    File.open(filename, 'w') { |file| file.write(object.to_s) }
    p "Successfully writen #{object.class} to the file #{filename}."
  rescue IOError => e
    p "Something was wrong: #{e.message}"
  end
end

