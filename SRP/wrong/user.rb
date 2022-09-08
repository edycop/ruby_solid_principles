# frozen_string_literal: true

class User
  attr_accessor :name, :surname, :age, :password

  def initialize(name, surname, age, password)
    @name = name
    @surname = surname
    @age = age
    @password = password
  end

  def print_info
    p 'User information'
    p "Name: #{name}}"
    p "Surname: #{surname}"
    p "Age: #{age}"
    p "Password: #{password}"
  end

  def encrypt_password
    return nil if password.nil?

    encrypted_list = []
    password_length = password.size

    password.each_char do |char|
      encoded_char = char + password_length.to_s
      encrypted_list << encoded_char
    end
    encrypted_list.join('')
  end
end

