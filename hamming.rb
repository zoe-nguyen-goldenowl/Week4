class Hamming
    
    def self.compute(str1, str2)
        count = 0
       if str1.length != str2.length 
          raise ArgumentError, 'Strings must be of equal length'
       end
        str1 = str1.chars
        str2 = str2.chars
        str1.each.with_index do |value, key|
            if str2[key] != value  
                count += 1
            end
        end
         p count 
    end
end
Hamming.compute('AATG', 'AAA')

=begin 
Calculate the Hamming Distance between two DNA strands.
Your body is made up of cells that contain DNA. Those cells regularly wear out and need replacing, which they achieve 
by dividing into daughter cells. In fact, the average human body experiences about 10 quadrillion cell divisions in a 
lifetime!
When cells divide, their DNA replicates too. Sometimes during this process mistakes happen and single pieces of DNA get 
encoded with the incorrect information. If we compare two strands of DNA and count the differences between them we can 
see how many mistakes occurred. This is known as the "Hamming Distance".
We read DNA using the letters C,A,G and T. Two strands might look like this:

They have 7 differences, and therefore the Hamming Distance is 7.
The Hamming Distance is useful for lots of things in science, not just biology, so it's a nice phrase to be familiar with :)
The Hamming distance is only defined for sequences of equal length, so an attempt to calculate it between sequences of 
different lengths should not work. The general handling of this situation (e.g., raising an exception vs returning a 
special value) may differ between languages.

=end