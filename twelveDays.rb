class TwelveDays
    GIF = [
        { first:   'a Partridge in a Pear Tree' },
        { second:   'two Turtle Doves' },
        { third:    'three French Hens' },
        { fourth:   'four Calling Birds' },
        { fifth:    'five Gold Rings' },
        { sixth:    'six Geese-a-Laying' },
        { seventh:  'seven Swans-a-Swimming' },
        { eighth:   'eight Maids-a-Milking' },
        { ninth:    'nine Ladies Dancing' },
        { tenth:    'ten Lords-a-Leaping' },
        { eleventh: 'eleven Pipers Piping' },
        { twelfth:  'twelve Drummers Drumming' },    
        ]
      def self.song
        siz = GIF.size
        str = ""
        siz.times.map do |i|
          str << "On the #{GIF[i].keys.first.to_s} day of Christmas my true love gave to me: #{value_song(i)}.\n\n"
        end
        p str[0..-2]
        
      end
     
      def self.value_song(num)
        a =[]
        num +=1
        num.times do |i|
           a << GIF[i].values.first
        end
        a.reverse.join(', ')
      end    
end


=begin
Output the lyrics to 'The Twelve Days of Christmas'.
On the first day of Christmas my true love gave to me: a Partridge in a Pear Tree.
On the second day of Christmas my true love gave to me: two Turtle Doves, and a Partridge in a Pear Tree.
On the third day of Christmas my true love gave to me: three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.
On the fourth day of Christmas my true love gave to me: four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.
On the fifth day of Christmas my true love gave to me: five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.
On the sixth day of Christmas my true love gave to me: six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.
On the seventh day of Christmas my true love gave to me: seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.
On the eighth day of Christmas my true love gave to me: eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.
On the ninth day of Christmas my true love gave to me: nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.
On the tenth day of Christmas my true love gave to me: ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.
On the eleventh day of Christmas my true love gave to me: eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.
On the twelfth day of Christmas my true love gave to me: twelve Drummers Drumming, eleven Pipers Piping, ten Lords-a-Leaping, nine Ladies Dancing, eight Maids-a-Milking, seven Swans-a-Swimming, six Geese-a-Laying, five Gold Rings, four Calling Birds, three French Hens, two Turtle Doves, and a Partridge in a Pear Tree.
=end