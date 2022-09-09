# frozen_string_literal: true

class User
  attr_accessor :name, :surname, :age, :password

  def initialize(name, surname, age, password)
    @name = name
    @surname = surname
    @age = age
    @password = password
  end

  def to_s
    """
    User information:
    - Name: #{name}
    - Surname: #{surname}
    - Age: #{age}
    - Password: #{password}
    """
  end
end

