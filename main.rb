def decode_char(char)
  morse = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
            '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K',
            '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.---.' => 'P', '--.-' => 'Q',
            '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W',
            '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '/' => ' ' }
  morse[char]
end

def decode_word(word)
  array_of_characters = word.split
  decoded_word = ''
  array_of_characters.each do |char|
    decoded_word += decode_char(char)
  end
  decoded_word
end

def decode_message(message)
  array_of_words = message.split('   ')
  decoded_message = []
  array_of_words.each do |word|
    decoded_message.push(decode_word(word))
  end
  decoded_message.join(' ')
end

puts decode_char('...')
puts decode_word('-- -.--')
puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
