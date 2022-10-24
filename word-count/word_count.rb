=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
    def initialize(word)
        @word = word
    end

    def word_count
        word_hash = Hash.new
        word_hash.default = 0
        @word.scan(/[0-9A-Za-z]+'/w+|[0-9A-Za-z]+/).each {|word| word_hash[word.downcase] +=  1}
        return word_hash
    end
end