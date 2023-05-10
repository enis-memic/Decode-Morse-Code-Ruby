MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(char)
  MORSE_CODE[char]
end

puts decode_char('.-') # => A

# split letters into an array
# loop to decode_letter,
# join decoded words
def decode_word(word)
  decoded = ''
  word.split.each { |l| decoded += decode_char(l) }
  decoded
end

puts decode_word('-- -.--') # => MY


def decode(sentence)
  words = sentence.split('   ')
  message = ''
  words.each { |n| message += "#{decode_word(n)} " }
  message
end

puts decode('-- -.--   -. .- -- .') # => MY NAME

# Once your code is ready use it to decode the message from the old bottle

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...') #=> A BOX FULL OF RUBIES
