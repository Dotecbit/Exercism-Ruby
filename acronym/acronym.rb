=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
    def self.abbreviate(long_name)
        short_name = ""
        long_name.split(%r{[^A-Za-z]+}).each {|element| short_name += element[0].capitalize}
        return short_name;
    end
end