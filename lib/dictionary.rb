class Dictionary
  def initialize
    load
  end

  def anagrams(text)
    anagrams_hashes = {}
    words_from(text).each do |word|
      anagrams_hashes[word] = @words_hash[word.chars.sort] - [word]
    end
    anagrams_hashes
  end

  private

  def load
    file = File.read('wordlist.txt')
    words = file.split("\n")
    @words_hash = {}
    @words_hash = words.each_with_object(Hash.new []) do |word, hash|
      hash[word.chars.sort] += [word]
    end
  end

  def words_from(text)
    words = text.split(',')
    words.map! { |word| word =~ /'/ ? word.strip.split("'") : word.strip  }
    words.flatten.select { |word| word.size > 1 }
  end
end
