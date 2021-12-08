$morse = { 
".-" => "A",
"-..." => "B",
"-.-." => "C",
"-.." => "D",
"." => "E",
"..-." => "F",
"--." => "G",
"...." => "H",
".."=> "I",
".---" => "J",
"-.-" => "K",
".-.." => "L",
"--" => "M",
"-." => "N",
"---" => "O",
".---." => "P",
"--.-" => "Q",
".-." => "R",
"..." => "S",
"-" => "T",
"..-" => "U",
"...-" => "V",
".--" => "W",
"-..-" => "X",
"-.--" => "Y",
"--.." => "Z",
"/" => " ",
}

def decode_char(char)
  $morse[char]
end

def decode_word(word)
  array0fCharacters = word.split(" ");
  decodedWord = '';
  array0fCharacters.each do |char|
    decodedWord += decode_char(char);
  end
  return decodedWord
end


def decode_message(message)
  array0fCharacters = message.split("   ");
  decodedWord = [];
  array0fCharacters.each do |char|
    decodedWord.push(decode_word(char));
  end
  return decodedWord.join(' ')
end

puts decode_char('...')
puts decode_word("-- -.--")
puts decode_message(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...")