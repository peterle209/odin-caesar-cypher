ASCII_UP_START = 65
ASCII_UP_LIMIT = 90
ASCII_DOWN_START = 97
ASCII_DOWN_LIMIT = 121
WRAP = 26

def caesar_cipher(string, shift_factor)
  cypher = string.chars.map do |c|
    c = c.ord
    if c >= ASCII_UP_START && c <= ASCII_UP_LIMIT
      c += shift_factor
      c -= WRAP if c > ASCII_UP_LIMIT
      c += WRAP if c < ASCII_UP_START
    elsif c >= ASCII_DOWN_START && c <= ASCII_DOWN_LIMIT
      c += shift_factor
      c -= WRAP if c > ASCII_DOWN_LIMIT
      c += WRAP if c < ASCII_DOWN_START
    end
    c.chr
  end
  puts cypher.join
end
