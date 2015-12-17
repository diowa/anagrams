class Dictionary
  def initialize
    load
  end

  def anagrams(text)
    words_from(text).each_with_object({}) do |word, hash|
      hash[word] = @words_hash[word.chars.sort] - [word]
    end
  end

  private

  def load
    file = File.read('wordlist.txt')
    words = file.split("\n")
    @words_hash = words.each_with_object(Hash.new []) do |word, hash|
      hash[word.chars.sort] += [word]
    end
  end

  def words_from(text)
    text.split(/\W/).map(&:strip).select { |word| word.size > 1 }
  end
end
