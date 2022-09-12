# frozen_string_literal: true

module AuthorizationLevel
  ROLES = { :GUEST => :GUEST, :REGISTERED => :REGISTERED, :ADMIN => :ADMIN }
end

class User
  attr_accessor :name, :surname, :age, :password, :authorization_level

  def initialize(name, surname, age, password, auth_level=AuthorizationLevel::ROLES[:GUEST])
    @name = name
    @surname = surname
    @age = age
    @password = password
    @authorization_level = auth_level
  end

  def admin?
    authorization_level == AuthorizationLevel::ROLES[:ADMIN]
  end

  def registered?
    authorization_level == AuthorizationLevel::ROLES[:REGISTERED]
  end

  def guest?
    authorization_level == AuthorizationLevel::ROLES[:GUEST]
  end

  def to_s
    """
    User information:
    - Name: #{name}
    - Surname: #{surname}
    - Age: #{age}
    - Password: #{password}
    - Auth level: #{authorization_level.to_s}
    """
  end

  def read_file_content(file_object)
    info_context = "#{name} is trying to read the file #{file_object.name}."

    return "#{info_context}\nERROR: #{name} can NOT access the file #{file_object.name}. Permission denied.\n" if guest?

    return "#{info_context}\nERROR: can NOT access the file #{file_object.name}. Permission denied.\n" if registered?

    return "#{info_context}\nPermission granted. Content: #{file_object.content}\n" if admin?
  end
end

