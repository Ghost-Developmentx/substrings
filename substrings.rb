# frozen_string_literal: true

def substrings(string, dictionary)
  string = string.downcase
  dictionary.each_with_object(Hash.new(0)) do |word, result|
    count = string.scan(word.downcase).length
    result[word] += count if count.positive?
  end
end