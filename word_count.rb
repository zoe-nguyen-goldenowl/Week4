class Phrase
    attr_reader :str
    def initialize(str)
        @str = str.downcase.gsub(/'([\S]+)'/, '\1')
    end

    def word_count 
      
      words = str.split(/[,$:.!!&@$%^&||\s||]/)
      p = words.reject(&:empty?)
      p.group_by(&:itself).transform_values(&:size)
    end
end
ph = Phrase.new("First: don't laugh. Then: don't cry.")
p ph.word_count





=begin
Given a phrase, count the occurrences of each word in that phrase.

For the purposes of this exercise you can expect that a word will always be one of:

    A number composed of one or more ASCII digits (ie "0" or "1234") OR
    A simple word composed of one or more ASCII letters (ie "a" or "they") OR
    A contraction of two simple words joined by a single apostrophe (ie "it's" or "they're")

When counting words you can assume the following rules:

    The count is case insensitive (ie "You", "you", and "YOU" are 3 uses of the same word)
    The count is unordered; the tests will ignore how words and counts are ordered
    Other than the apostrophe in a contraction all forms of punctuation are ignored
    The words can be separated by any form of whitespace (ie "\t", "\n", " ")

For example, for the phrase "That's the password: 'PASSWORD 123'!", cried the Special
 Agent.\nSo I fled.
=end