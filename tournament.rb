class Tournament
    def self.tally(input)
        ip = input.split("\n").map { |m| m.split(";") }
        point = ip.each_with_object({}) do |element, hash |
            t1,t2,ans = element
            hash[t1] ||= {w:0 ,d:0 ,l:0 }
            hash[t2] ||= {w:0 ,d:0 ,l:0 }
            case ans
            when "win"
                hash[t1][:w] +=1
                hash[t2][:l] +=1
            when "loss"
                hash[t1][:l] +=1
                hash[t2][:w] +=1
            when "draw"
                hash[t1][:d] +=1
                hash[t2][:d] +=1
            end
        end
        point.each do |k, v|
            point[k][:p] = v.values.sum
            point[k][:mp] = v[:w]*3+v[:d]
        end
        self.form(point)
    end
    def self.form(point)
        ans = ""
        point.sort_by{|k,v| v[:mp]}
         point.each do |k,v|
            a = v[:p].to_s
            b = v[:w].to_s
            c = v[:d].to_s
            d = v[:l].to_s
            e = v[:mp].to_s
           
           ans << "#{k.ljust(35)} | #{a}  | #{b}  | #{c}  | #{d}  |  #{e}\n"
        end
        puts "Team                                | MP | W  | D  | L  |  P\n "
        
        puts ans
    end
end

input = <<~INPUT
Allegoric Alaskans;Blithering Badgers;draw
INPUT
Tournament.tally(input)



=begin
Tally the results of a small football competition.
Based on an input file containing which team played against which and what the outcome was
create a file with a table like this:

Team                           | MP |  W |  D |  L |  P
Devastating Donkeys            |  3 |  2 |  1 |  0 |  7
Allegoric Alaskans             |  3 |  2 |  0 |  1 |  6
Blithering Badgers             |  3 |  1 |  0 |  2 |  3
Courageous Californians        |  3 |  0 |  1 |  2 |  1

What do those abbreviations mean?

    MP: Matches Played
    W: Matches Won
    D: Matches Drawn (Tied)
    L: Matches Lost
    P: Points

A win earns a team 3 points. A draw earns 1. A loss earns 0.
The outcome should be ordered by points, descending. In case of a tie, teams are ordered 
alphabetically.

Input
Your tallying program will receive input that looks like:

Allegoric Alaskans;Blithering Badgers;win
Devastating Donkeys;Courageous Californians;draw
Devastating Donkeys;Allegoric Alaskans;win
Courageous Californians;Blithering Badgers;loss
Blithering Badgers;Devastating Donkeys;loss
Allegoric Alaskans;Courageous Californians;win

=end
