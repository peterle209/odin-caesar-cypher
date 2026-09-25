# frozen_string_literal: true

ASCII_UP_START = 65
ASCII_UP_LIMIT = 90
ASCII_DOWN_START = 97
ASCII_DOWN_LIMIT = 121
WRAP = 26

def caesar_cipher(string, shift_factor)
  unless string.is_a?(String)
    print 'Invalid string.'
    return
  end
  return '' if string.length == 0

  cypher = string.chars.map do |c|
    c = c.ord
    if c >= ASCII_UP_START && c <= ASCII_UP_LIMIT
      c = ((c - ASCII_UP_START + shift_factor) % WRAP) + ASCII_UP_START
    elsif c >= ASCII_DOWN_START && c <= ASCII_DOWN_LIMIT
      c = ((c - ASCII_DOWN_START + shift_factor) % WRAP) + ASCII_DOWN_START
    end
    c.chr
  end
  cypher.join
end
