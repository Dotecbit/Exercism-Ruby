=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
    def initialize(matrix)
        @matrix = Array.new() {Array.new()}
        @rows = []
        matrix.split("/n").each do |row|
        row.scan(//d+/).each {|number| @rows.push(number.to_i) } 
            @matrix.push(@rows)
            @rows = []
        end
    end

    def rows
        @matrix
    end

    def columns
        ind_row = 0
        @matrix_column = Array.new(@matrix.size) {Array.new(@matrix.size)}
        @matrix.each {|row| 
            row.each_index {|index_column| 
                @matrix_column[index_column][ind_row] = (row[index_column])}
            ind_row += 1
            }
            return @matrix_column
    end
    
end