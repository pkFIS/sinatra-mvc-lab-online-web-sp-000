class PigLatinizer

  def piglatinize(str)
    piglatinize_word(str)
    str.split(" ").count > 1 ?  piglatinize_sentence(str) : piglatinize_word(str)
  end


  def piglatinize_word(word)
    if word[0].match(/[aAeEiIoOuU]/)
       word = word + "w"
    else
      letter_array = word.split("")
      consonant = []
      while !letter_array.first.match(/[aAeEiIoOuU]/)
        consonant << letter_array.shift
      end
      word = letter_array.join("") + consonant.join("")
    end
    word + "ay"
  end

  def piglatinize_sentence(sentence)
    word_array = sentence.split(" ")
    new_word_array = []
    word_array.each {|word| new_word_array << piglatinize_word(word)}
    new_word_array.join(" ")
  end

end
