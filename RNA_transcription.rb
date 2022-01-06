class Complement
    CHANGE = {
        'A'=> 'U',
        'C'=> 'G',
        'G'=> 'C',
        'T'=> 'A'
    }
    def self.of_dna(item)
        puts "" if item.nil?
        arr = item.chars
        ans = ""
        arr.each {|i|
            ans << CHANGE[i]
        }
         p ans
    end
end
Complement.of_dna("AG")

=begin
    
Given a DNA strand, return its RNA complement (per RNA transcription).
Both DNA and RNA strands are a sequence of nucleotides.
The four nucleotides found in DNA are adenine (A), cytosine (C), guanine (G) and thymine (T).
The four nucleotides found in RNA are adenine (A), cytosine (C), guanine (G) and uracil (U).
Given a DNA strand, its transcribed RNA strand is formed by replacing each nucleotide with its complement:

    G -> C
    C -> G
    T -> A
    A -> U 
=end