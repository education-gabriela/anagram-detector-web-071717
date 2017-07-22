class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(words_array)
    ordered_word = self.class.order_word(self.word)

    words_array.select do |word|
      ordered_word == self.class.order_word(word)
    end

  end

  def self.order_word(word)
    word.split("").sort
  end
end
