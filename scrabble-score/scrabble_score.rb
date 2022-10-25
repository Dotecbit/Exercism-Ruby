=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end
class Scrabble

    @@PUNTATION = {
        'A, E, I, O, U, L, N, R, S, T' => 1,
        "D, G" => 2,
        "B, C, M, P" => 3,
        "F, H, V, W, Y " => 4,
        "K" => 5,
        "J, X" => 8,
        "Q, Z" => 10
    }

    def initialize(leters)
        @leters = leters
    end

    def score()
        score = 0
        @leters.each_char {|char|
            @@PUNTATION.each {|key, value| if key.include?(char.upcase) 
                score += value
                end
            }
        }
        return score
    end
end