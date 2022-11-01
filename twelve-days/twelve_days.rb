=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

## WITH LOOPS
class TwelveDays
    @@PHRASE = "On the DAYS day of Christmas my true love gave to me: "

    @@THINGS = ["a Partridge in a Pear Tree","two Turtle Doves","three French Hens","four Calling Birds",
        "five Gold Rings","six Geese-a-Laying","seven Swans-a-Swimming","eight Maids-a-Milking",
        "nine Ladies Dancing","ten Lords-a-Leaping","eleven Pipers Piping","twelve Drummers Drumming"]

    @@DAYS = ["first","second","third","fourth","fifth","sixth","seventh","eighth","ninth","tenth",
        "eleventh","twelfth"]

    def self.song
        poem = ""
        verse_index = 0
        rr_index = 0
        while @@DAYS.size > verse_index
            verse_lyric = @@PHRASE.gsub("DAYS",@@DAYS[verse_index])
            if verse_index == 0
                verse_lyric += @@THINGS[0]+".\n\n"
            else
                while 0 < rr_index 
                    verse_lyric += @@THINGS[rr_index]+", "
                    rr_index -= 1
                end
                verse_lyric += "and "+@@THINGS[0]+".\n\n"
            end
            verse_index += 1
            rr_index = verse_index
            poem += verse_lyric
        end
        return poem[0..-2]
    end

end

##WITH FUNCTIONS OF ARRAY
class TwelveDays1
    @@PHRASE = "On the DAYS day of Christmas my true love gave to me: "

    @@THINGS = ["a Partridge in a Pear Tree","two Turtle Doves","three French Hens","four Calling Birds",
        "five Gold Rings","six Geese-a-Laying","seven Swans-a-Swimming","eight Maids-a-Milking",
        "nine Ladies Dancing","ten Lords-a-Leaping","eleven Pipers Piping","twelve Drummers Drumming"]

    @@DAYS = ["first","second","third","fourth","fifth","sixth","seventh","eighth","ninth","tenth",
        "eleventh","twelfth"]

    def self.song
        poem = ""
        @@DAYS.each_index {|index_day|
            verse_lyric = @@PHRASE.gsub("DAYS",@@DAYS[index_day])
            if index_day == 0
                verse_lyric += @@THINGS[index_day]+".\n\n"
            else
                @@THINGS[1..index_day].reverse().each {|thing|
                    verse_lyric += thing+", "
                }
            verse_lyric += "and "+@@THINGS[0]+".\n\n"
            end
            poem += verse_lyric
        }
        return poem[0..-2]
    end

end
