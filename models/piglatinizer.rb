class PigLatinizer

  def piglatinize(text)
    words = text.split(" ")
    words.collect! do |word|
      word_a = word.split("")
      if !word_a[0].downcase.match?(/[aeoui]/)
        until word_a[0].downcase.match?(/[aeiou]/)
          word_a << word_a.shift
        end
        word_a.join << "ay"
      else
        word << "way"
      end
    end
    words.join(" ")
  end

end
