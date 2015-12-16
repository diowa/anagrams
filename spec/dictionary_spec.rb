require 'dictionary'

describe Dictionary do
  let (:dictionary) { Dictionary.new }

  describe '.initialize' do
    it 'loads the dictionary' do
      expect(dictionary.instance_variable_get(:@words_hash)).to_not be nil
    end
  end

  describe '#anagrams' do
    context "with one word" do
      it "returns { 'word' => ['anagram1', 'anagram2] }" do
        expect(dictionary.anagrams("tree")).to eq({ "tree" => ["reet", "teer"] })
      end
    end

    context "with two word" do
      it "returns { 'word1' => ['anagram1', 'anagram2], 'word2' => ['anagram1', 'anagram2] }" do
        expect(dictionary.anagrams("tree, none")).to eq({ "tree" => ["reet", "teer"], "none" => ["neon"] })
      end
    end

    context "with two word, one containing apostrophe" do
      it "returns { 'word1' => ['anagram1', 'anagram2], 'word2' => ['anagram1', 'anagram2] }" do
        expect(dictionary.anagrams("tree, last's")).to eq({ "tree" => ["reet", "teer"], "last" => ["salt", "slat"] })
      end
    end
  end
end