=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram
    def self.isogram?(word)
        word_hash = {}
        word_hash.default = 0
        word.each_char {|leter| if (/[A-Za-z]/ =~ leter) != nil
            word_hash[leter.downcase] = 1 + word_hash[leter.downcase] 
        end}
        word_hash.each_value {|value| if value > 1 
            return false 
        end}
        return true
    end
end
