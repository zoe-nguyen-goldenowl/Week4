class Year
    def self.leap?(year)
        if year%400 == 0 
           p "Expected 'true', #{year} is a leap year." 
        elsif year%4 == 0 && year%100 != 0 
           p "Expected 'true', #{year} is a leap year."
        else
           p "Expected 'false', #{year} is not a leap year."
        end
    end
end
 Year.leap?(2015)
 


=begin
Given a year, report if it is a leap year.
The tricky thing here is that a leap year in the Gregorian calendar occurs:

on every year that is evenly divisible by 4
  except every year that is evenly divisible by 100
    unless the year is also evenly divisible by 400

For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.
=end