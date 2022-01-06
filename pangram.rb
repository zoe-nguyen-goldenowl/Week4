class Pangram
    AZ = ('a'..'z')
    def self.pangram?(sentence)
        str = sentence.split
        str = str.join.chars.uniq.sort
        pa = str.join.downcase
        AZ.all? {|item|
        pa.include?(item)  
        }
    end
end
sentence = 'the quick brown fox jumps over the lazy dog'
p Pangram.pangram?(sentence)

=begin
Determine if a sentence is a pangram. A pangram (Greek: παν γράμμα, pan gramma, "every letter") is a sentence using every
letter of the alphabet at least once. The best known English pangram is:
The quick brown fox jumps over the lazy dog.

The alphabet used consists of ASCII letters a to z, inclusive, and is case insensitive. Input will not contain non-ASCII
symbols.
=end