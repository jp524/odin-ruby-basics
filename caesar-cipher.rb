def caesar_cipher(string, shift)
  characters = string.chars

  ascii = characters.map do |character|
    number = character.ord
    if (number >= 97 && number <= 122) || (number >= 65 && number <= 90)
      number += shift
      number > 122 || number > 90 && number < 97 ? number -= 26 : number
    else
      number
    end
  end

  new_string = ascii.map { |number| number.chr }.join("")
  p new_string
end

caesar_cipher("What a string!", 5)