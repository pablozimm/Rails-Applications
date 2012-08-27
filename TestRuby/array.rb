names = Array.new(4, "mac")
puts "#{names}"

nums = Array.new(10) { |e| e = e * 2 }
puts "#{nums}"

digits = Array(0..9)
puts "#{digits}"

nums = Array[1, 2, 3, 4,5]
puts "#{nums}"

nnums = Array.[](1, 2, 3, 4,5, 8, 9)
puts "#{nnums}"

digits = Array(0..9)
num = digits.at(6)
puts "#{num}"

digits = [1, 2, 3, 4, 5, 8, 9]
num = digits.at(6)
puts "#{num}"
puts digits.inspect

months = Hash.new( "month" )      # default value for any key is month
puts "#{months[0]}"
puts "#{months[72]}"

H = Hash["a" => 100, "b" => 200]
puts "#{H['a']}"
puts "#{H['b']}"


time1 = Time.new
puts "Current Time : " + time1.inspect

# Time.now is a synonym:
time2 = Time.now
puts "Current Time : " + time2.inspect

time = Time.new

# Components of a Time
puts "Current Time : " + time.inspect
puts time.year    # => Year of the date 
puts time.month   # => Month of the date (1 to 12)
puts time.day     # => Day of the date (1 to 31 )
puts time.wday    # => 0: Day of week: 0 is Sunday
puts time.yday    # => 365: Day of year
puts time.hour    # => 23: 24-hour clock
puts time.min     # => 59
puts time.sec     # => 59
puts time.usec    # => 999999: microseconds
puts time.zone    # => "UTC": timezone name


# $, =", "   # Array value separator
$, =" | "   # Array value separator

range1 = (1..10).to_a
range2 = ('bar'..'bat').to_a

puts "#{range1}"
puts "#{range2}"


# Assume a range
digits = 0..9

puts digits.include?(5)
ret = digits.min
puts "Min value is #{ret}"

ret = digits.max
puts "Max value is #{ret}"

ret = digits.reject {|i| i < 5 }
puts "Rejected values are #{ret}"

digits.each do |digit|
   puts "In Loop #{digit}"
end

puts "Enter line:"
while gets
   print if /start/../end/
   Process.exit if /exit/..//
   print "Enter line: "
end

score = 70

# result = case score
   # when 0..40: "Fail"
   # when 41..60: "Pass"
   # when 61..70: "Pass with Merit"
   # when 71..100: "Pass with Distinction"
   # else "Invalid Score"
# end
# 
# puts result

if ((1..10) === 5)
  puts "5 lies in (1..10)"
end

if (('a'..'j') === 'c')
  puts "c lies in ('a'..'j')"
end

if (('a'..'j') === 'z')
  puts "z lies in ('a'..'j')"
end



