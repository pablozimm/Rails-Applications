puts "Hello Ruby"

END {
   puts "Terminating Ruby Program"
}

puts "This is main Ruby Program"

BEGIN {
   puts "Initializing Ruby Program"
}

class Sample
   def hello
      puts "Hello Ruby class!"
   end
end

class Customer
   @@no_of_customers=0  # class variable
   
          # instance variable starts with @
          # local variable begin with lowercase or _
# global variable precedes with dollar sign  

   def initialize(id, name, addr)
      @@no_of_customers+=1
      
      @cust_id=id
      @cust_name=name
      @cust_addr=addr
    end
   
    def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
    end
    
    def total_no_of_customers()
       puts "Total number of customers: #@@no_of_customers"
    end
    
end

# Now using above class to create objects
object = Sample.new
object.hello

cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2=Customer.new("2", "Poul", "New Empire road, Khandala")

puts cust1
puts cust2

cust1.display_details()
cust2.display_details()

cust1.total_no_of_customers()
cust2.total_no_of_customers()

$global_variable = 10
class Class1
  def print_global
     puts "Global variable in Class1 is #$global_variable"
  end
end
class Class2
  def print_global
     $global_variable+=22
     puts "Global variable in Class2 is #{$global_variable}"
  end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global

class1obj.print_global

# Constants begin with an uppercase letter. 
  
class Example
   VAR1 = 100
   VAR2 = 200
   def show
       puts "Value of first Constant is #{VAR1}"
       puts "Value of second Constant is #{VAR2}"
   end
end

# Create Objects
object=Example.new()
object.show

puts 'escape using "\\"';
puts 'That\'s right';

puts "escape using '\\'";
puts "That's right";

# Substitution 
puts "Multiplication Value : #{24*60*60}";

ary = [  "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
   puts i
end

colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
colors.each do |key, value|
   print key, " is ", value, "\n"
end

# hash = colors = { "yellow":0xf00, "while":0x0f0, "black":0x00f }
# hash.each do |key, value|
   # print key, " is ", value, "\n"
# end

(10..15).each do |n| 
   print n, ' ' 
end

print "\n"

(10...15).each do |n| 
   print n, ' ' 
end

print "\n"


MR_COUNT = 0        # constant defined on main Object class
module Foo
  MR_COUNT = 3
  # ::MR_COUNT = 1    # set global count to 1
  # MR_COUNT = 2      # set local count to 2
end
puts MR_COUNT       # this is the global constant
puts Foo::MR_COUNT  # this is the local "Foo" constant


CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST


# another comments block
=begin
This is a multiline comment and con spwan as many lines as you
like. But =begin and =end should come in the first line only. 
=end

$debug=1
print "debug\n" if $debug

$debug=false
print "debug again\n" if $debug

$debug=nil
print "debug again\n" if $debug


$age =  5
case $age
when 0 .. 2
    puts "baby"
when 3 .. 6
    puts "little child"
when 7 .. 12
    puts "child"
when 13 .. 18
    puts "youth"
else
    puts "adult"
end

for i in 0..5
   puts "Value of local variable is #{i}"
end

