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

  # Create a method to decode a Morse code character, takes a string parameter, and return the corresponding character in uppercase (e.g. decode_char(".-") returns "A").

def decode_char (char)
    MORSE_CODE[char]
end

puts decode_char(".-") # => A

# split letters into an array 
# loop to decode_letter, 
# join decoded words
def decode_word(word)
  decoded = ""
  morse_chars = word.split.each { |l| decoded += decode_char(l) }
  decoded
end

puts decode_word("-- -.--") # => MY


#Create a method to decode the entire message in Morse code, takes a string parameter, and return the string representation. Every word will be separated by 3 spaces (e.g.

decode("-- -.--   -. .- -- .")
returns "MY NAME").

def decode(sentence)
    words = sentence.split('   ')
    message = ''
    words.each { |n| message += "#{decode_word(n)} " }
    message
  end
  
  puts decode("-- -.--   -. .- -- .") # => MY NAME

  # Once your code is ready use it to decode the message from the old bottle
  
  puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...") #=> A BOX FULL OF RUBIES
