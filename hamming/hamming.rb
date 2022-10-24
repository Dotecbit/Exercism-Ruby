=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming

    def self.compute(dna_seq1, dna_seq2)
        if  dna_seq1.size == dna_seq2.size
            hammer_count = 0
            index_char = 0
            while index_char < dna_seq1.size && index_char < dna_seq2.size
                if dna_seq1[index_char] != dna_seq2[index_char] 
                    hammer_count += 1
                end
                index_char += 1
            end
            return hammer_count
        else
            raise ArgumentError.new()
        end
    end
end