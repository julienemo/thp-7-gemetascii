def char_treatment(char, key)
  # basic settings
  char_code = char.ord
  result = ''

  capital_letter_codes = [65..90]
  min_letter_code = [97..122]
  punctuation_codes = [32..64]

  # if char is not letter, do nothing
  # else, decaler de key
  if (char_code >= 32) && (char_code <= 64)
    new_code = char_code
  else
    new_code = char_code + key
  end

  # if any letter goes further than z
  # grab it back
  if new_code > 122
    new_code = (new_code - 122)%26 + 97 - 1
  elsif (new_code > 90) && (new_code < 97)
    new_code = (new_code - 90)%26 + 65 -1
  else
    new_code = new_code
  end
  # convert the new code to char
  result = new_code.chr
  return result
end

def caesar_cipher(string,key)
  # data validation

  # no numbers in string and no strings in key
  if (string != string.to_s) || (key != key.to_i)
    result = "Please enter first your lettered-string and then your positive integer key."

  # no special characters
  # there are others but how to get all of them.....hmmmm?
elsif string =~ /[éèêàôîûçÇÉÈÊÎÔÛÀïëü]/ 
    result = "Can't take special character..."

  # if valid input, tear everything apart
  # and perform the logic to every element
  # then glue everything back
  else
    result = string.each_char.map {|char|
      char_treatment(char, key)
    }.join("")
  end
end


puts caesar_cipher("Oh hell! Watch where you are going!!!",3)
puts caesar_cipher("Ça alors!",3)
