class Dictionary
  def initialize
    words = File.read('wordslist.txt').split("\n")
    @words_hash = words.each_with_object(Hash.new []) do |word, hash|
      hash[word.chars.sort] += [word]
    end
  end

  def anagrams(text)
    words = text.split(/\W/).map(&:strip).select { |word| word.size > 1 }
    words.each_with_object({}) do |word, hash|
      hash[word] = @words_hash[word.chars.sort] - [word]
    end
  end
end
