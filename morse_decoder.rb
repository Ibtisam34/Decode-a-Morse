def decode_char(code)
  morse_code = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.',
    'F' => '..-.', 'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---',
    'K' => '-.-', 'L' => '.-..', 'M' => '--', 'N' => '-.', 'O' => '---',
    'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
    'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--',
    'Z' => '--..'
  }
  morse_code.key(code).upcase
end

def decode_word(word)
  word.split.map { |char| decode_char(char) }.join
end

def decode(message)
  message.split('   ').map { |word| decode_word(word) }.join(' ')
end

message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
puts decode(message)
