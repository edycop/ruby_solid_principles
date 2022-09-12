# frozen_string_literal: true
#
module StringEncrypter
  def encrypt_string(to_encrypt)
    return nil if to_encrypt.nil?

    encrypted_list = []
    string_length = to_encrypt.size

    to_encrypt.each_char do |char|
      encoded_char = char + string_length.to_s
      encrypted_list << encoded_char
    end
    encrypted_list.join('')
  end
end

