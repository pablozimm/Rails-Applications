require "./Week"

class Decade
include Week
   no_of_yrs=10
   def no_of_months
      puts Week::FIRST_DAY
      number=10*12
      puts number
   end
end
d1=Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months

class NewDecade
include NewWeek
   no_of_yrs=10
   def no_of_months
      puts NewWeek::FIRST_DAY
      number=10*12
      puts number
   end
end
d1=NewDecade.new
puts NewWeek::FIRST_DAY
d1.weeks_in_month
d1.weeks_in_year
d1.no_of_months


module A
   def a1
     puts "a1"
   end
   def a2
     puts "a2"
   end
end
module B
   def b1
     puts "b1"
   end
   def b2
     puts "b2"
   end
end

class Sample
include A
include B
   def s1
     puts "s1"
   end
end

samp=Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1


x, y, z = 12, 36, 72
puts "The value of x is #{ x }."
puts "The sum of x and y is #{ x + y }."
puts "The average was #{ (x + y + z)/3 }."

puts %{Ruby is fun.}       # equivalent to "Ruby is fun."
puts %Q{ Ruby is fun. }    # equivalent to " Ruby is fun. "
puts %q[Ruby is fun.]      # equivalent to a single-quoted string
puts %x!ls!                # equivalent to back tick command output `ls`
puts `pwd`

myStr = String.new("THIS IS TEST")
foo = myStr.downcase

puts "#{foo}"

