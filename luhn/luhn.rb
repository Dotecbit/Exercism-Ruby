=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end
class Luhn
    def self.valid?(numbers)
        even_pair = numbers.scan(/[0-9]/).size % 2 == 0
        sum = 0
        if numbers.size < 2
            return false
        end
        if !numbers.match?(/[1-9]/) && numbers.scan(/0/).size == 1
            return false
        end
        if numbers.match?(/[^0-9 ]/)
            return false
        end
        numbers.scan(/[0-9]/).each {|num| 
            if even_pair
                even_pair = false
                sum += (num.to_i*2 <= 9 ? num.to_i*2: num.to_i*2-9)
            else
                even_pair = true
                sum += num.to_i
            end}
        return sum % 10 == 0
    end
end