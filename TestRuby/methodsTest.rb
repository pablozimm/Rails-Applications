# require 'trig.rb'
# require 'moral'
# 
# y = Trig.sin(Trig::PI/4)
# wrongdoing = Moral.sin(Moral::VERY_BAD)


def test(a1="Ruby", a2="Perl")
   puts "The programming language is #{a1}"
   puts "The programming language is #{a2}"
end
test "C", "C++"
test

def sample (*test)
   puts "The number of parameters is #{test.length}"
   for i in 0...test.length
      puts "The parameters are #{test[i]}"
   end
end
sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"

class Accounts
   def reading_charge
    puts "reading_charge"
   end

   def Accounts.return_date
     puts "class return_date"
   end
end

Accounts.return_date

def callme
  puts "callme now"
end

callme

alias buzzme callme

buzzme

def test
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end
test {puts "You are in the block"}

def test
   yield 5
   puts "You are in the method test"
   yield 100
end
test {|i| puts "You are in the block #{i}"}


def test
   yield "good", "bad"
   puts "You are in the method test"
   yield "read", "write"
end
test {|a, b| puts "You are in the block #{a} and #{b}"}

def test
  yield
end
test{ puts "Hello the block to work"}


def test(&block)
   block.call
end
test { puts "Hello again block"}

module Trig
   PI = 3.141592654
   def Trig.sin(x)
   # ..
   end
   def Trig.cos(x)
   # ..
   end
end

module Moral
   VERY_BAD = 0
   BAD = 1
   def Moral.sin(badness)
   # ...
   end
end






