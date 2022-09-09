# frozen_string_literal: true

require_relative 'user'
require_relative 'string_encrypter'
require_relative 'object_printer'

class App
  include StringEncrypter
  include ObjectPrinter

  def execute_app
    jhon = User.new('Jhon', 'Doe', 32, 'secret')
    neo = User.new('Thomas', 'Anderson', 25, 'I_am_a_great_hacker')

    print_to_console(jhon)
    print_to_console(neo)

    p ''

    print_to_file('john_file.txt', jhon)
    print_to_file('neo_file.txt', neo)

    p ''

    p encrypt_string(jhon.password)
    p encrypt_string(neo.password)
  end
end

App.new.execute_app

