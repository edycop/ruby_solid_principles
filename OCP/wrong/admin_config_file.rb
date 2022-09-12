# frozen_string_literal: true

class AdminConfigFile
  attr_accessor :name, :content

  def initialize(name, content)
    @name = name
    @content = content
  end
end

