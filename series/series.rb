=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
    def initialize(serie)
        @serie = serie
    end

    def slices(digits)
        if digits <= @serie.size && digits > 0
            slices = []
            index_x = 0
            index_y = digits
            while index_x + digits <= @serie.size
                slices.push(@serie[index_x, index_y])
                index_x += 1
            end
            return slices
        end
        raise ArgumentError.new("More digitis on slice than numbers in the serie")
    end
end