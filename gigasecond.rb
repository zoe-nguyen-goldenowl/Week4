require 'time'
require 'date'

class Gigasecond
    def self.from(time)
        time = time.to_time + 10**9   
    end
end
p Gigasecond.from(Time.utc(2011, 4, 25, 0, 0, 0))

=begin
Given a moment, determine the moment that would be after a gigasecond has passed.
A gigasecond is 10^9 (1,000,000,000) seconds.
=end