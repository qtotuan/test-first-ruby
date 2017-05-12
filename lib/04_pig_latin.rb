def translate(sentence)

  def change_words(str)
    vowel = /(^[aeiou]*)/.match(str)
    consonants = /(^[^aeiou]*)/.match(str)
    exception = /^(s?qu)/.match(str)

    # puts vowel[0]
    # puts consonants[0]
    # puts exception[0]

    if exception != nil
      str.gsub!(exception[0], "")
      return str + exception[0] + "ay"
    elsif vowel[0] != ""
      return str + "ay"
    else
      str.gsub!(consonants[0], "")
      return str + consonants[0] + "ay"
    end
  end

  words = sentence.split(" ")
  words.map { |e| change_words(e) }.join(" ")
end
