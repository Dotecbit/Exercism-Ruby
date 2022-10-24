=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
    def self.convert(number)
        rain_song = ""
       if number % 3 == 0
            rain_song = "Pling"
       end
       if number % 5 == 0
            rain_song += "Plang"
       end
       if number % 7 == 0
            rain_song += "Plong"
       end
       if rain_song.size == 0
        return number.to_s
       end
       return rain_song
    end
end