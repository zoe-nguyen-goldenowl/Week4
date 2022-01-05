class Luhn
    def self.valid?(num)
      p num = num.split.join
       if num.size <= 1 || num.match(/\D/)
         false
       else
       p num = num.chars.map(&:to_i).reverse
         a = num.map.with_index do |v , k|
                 k%2 == 0 ? v : (v*2>9 ? v=v*2-9 : v*2)
          end
       a.sum%10 == 0 ? true : false
        end
    end
end
p Luhn.valid?("0987 - 1")


=begin
Given a number determine whether or not it is valid per the Luhn formula.
The Luhn algorithm is a simple checksum formula used to validate a variety of identification
numbers, such as credit card numbers and Canadian Social Insurance Numbers.
The task is to check if a given string is valid.
Validating a Number

Strings of length 1 or less are not valid. Spaces are allowed in the input, but they should be 
stripped before checking. All other non-digit characters are disallowed.
=end
