class CaesarCipher
  def caesar_cipher(string, shift)
    characters = get_characters(string)
    ascii = get_ascii_code(characters, shift)
    new_string = ascii.map(&:chr).join('')
    p new_string
  end

  def get_characters(string)
    string.chars
  end

  def get_ascii_code(characters, shift)
    characters.map do |character|
      number = character.ord
      if lowercase_letter?(number)
        number += shift
        correct_shift_lowercase(number)
      elsif uppercase_letter?(number)
        number += shift
        correct_shift_uppercase(number)
      else
        number
      end
    end
  end

  def lowercase_letter?(number)
    return true if number >= 97 && number <= 122

    false
  end

  def uppercase_letter?(number)
    return true if number >= 65 && number <= 90

    false
  end

  def correct_shift_lowercase(number)
    number -= 26 unless lowercase_letter?(number)

    number
  end

  def correct_shift_uppercase(number)
    number -= 26 unless uppercase_letter?(number)

    number
  end
end
