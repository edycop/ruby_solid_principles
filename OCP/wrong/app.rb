# frozen_string_literal: true

require_relative 'user'
require_relative 'admin_config_file'
require_relative 'string_encrypter'
require_relative 'object_printer'

class App
  include StringEncrypter
  include ObjectPrinter

  def execute_app
    jhon = User.new('Jhon', 'Doe', 32, 'secret')
    neo = User.new('Thomas', 'Anderson', 25, 'I_am_a_great_hacker', AuthorizationLevel::ROLES[:REGISTERED])
    agent = User.new('Agent', 'Smith', 30, 'hello_mr_anderson', AuthorizationLevel::ROLES[:ADMIN])

    print_to_console(jhon)
    print_to_console(neo)
    print_to_console(agent)

    admin_config_file = AdminConfigFile.new('admin_file.txt', 'This is the content of a secret configuration file')

    print jhon.read_file_content(admin_config_file)
    print neo.read_file_content(admin_config_file)
    print agent.read_file_content(admin_config_file)
  end
end

App.new.execute_app

