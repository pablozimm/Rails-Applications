# define a class
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # accessor methods
   def width
      @width
   end

   def height
      @height
   end
end

# create an object
box = Box.new(10, 20)

# use accessor methods
x = box.width()
y = box.height()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"
   
   
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # accessor methods
   def getWidth
      @width
   end
   def getHeight
      @height
   end

   # setter methods
   def setWidth=(value)
      @width = value
   end
   def setHeight=(value)
      @height = value
   end
end

# create an object
box = Box.new(10, 20)

# use setter methods
box.setWidth= 30
box.setHeight= 50

# use accessor methods
x = box.getWidth()
y = box.getHeight()

puts "Set Width of the box is : #{x}"
puts "Set Height of the box is : #{y}"

class Box
   # Initialize our class variables
   @@count = 0
   def initialize(w,h)
      # assign instance avriables
      @width, @height = w, h

      @@count += 1
   end

# A class method is defined using def self.methodname() which ends with end delimiter 
# and would be called using class name as classname.methodname as shown in the following example:

   def self.printCount()  # class method  
      puts "Box count is : #@@count"
   end
   
   # define to_s method
   def to_s
      "(w:#@width,h:#@height)"  # string formatting of the object.
   end
   
end

# create two object
box1 = Box.new(10, 20)
box2 = Box.new(30, 100)

# call class method to print box count
Box.printCount()
puts "String representation of box1 is : #{box1}"
puts "String representation of box2 is : #{box2}"   
   
# define a class
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # instance method by default it is public
   def getArea
      getWidth() * getHeight
   end

   # define private accessor methods
   def getWidth
      @width
   end
   def getHeight
      @height
   end
   # make them private
   private :getWidth, :getHeight

   # instance method to print area
   def printArea
      @area = getWidth() * getHeight
      puts "Big box area is : #@area"
   end
   # make it protected
   protected :printArea
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"

# define a subclass
class BigBox < Box

   # add a new instance method
   def printArea
      @area = @width * @height
      puts "Big box printArea is : #@area"
   end


   # change existing getArea method as follows
   def getArea
      @area = @width * @height
      puts "Big box getArea is : #@area"
   end
   
end

# create an object
bigbox = BigBox.new(10, 20)

# try to call protected or methods
bigbox.printArea()
# print the area using overriden method.
bigbox.getArea()

begin
  # all inherited protected or methods
  box.printArea()
rescue Exception => e
  puts "Got Exception: #{e.message}\n #{e.backtrace.inspect}"
ensure
  puts "doing finally"
end

# define a class
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # accessor methods
   def getWidth
      @width
   end
   def getHeight
      @height
   end

   # setter methods
   def setWidth=(value)
      @width = value
   end
   def setHeight=(value)
      @height = value
   end
end

# create an object
box = Box.new(10, 20)

# let us freez this object
box.freeze
if( box.frozen? )
   puts "Box object is frozen object"
else
   puts "Box object is normal object"
end

begin
# now try using setter methods
box.setWidth = 30
box.setHeight = 50
rescue Exception => e
  puts "Freeze exception: #{e.message}\n #{e.backtrace}"
ensure
  puts "finally executed"
end

# use accessor methods
x = box.getWidth()
y = box.getHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"
   
# define a class
class Box
   BOX_COMPANY = "TATA Inc"
   BOXWEIGHT = 10
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end
   # instance method
   def getArea
      @width * @height
   end
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"
puts Box::BOX_COMPANY
puts "Box weight is: #{Box::BOXWEIGHT}"

# define a class
class Box
   attr_accessor :width, :height

   
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # instance method
   def getArea
        # # print class information
   # puts "Type of self = #{self.type}"
   # puts "Name of self = #{self.name}"
      @width * @height
   end
end

# create an object using new
box1 = Box.new(10, 20)

# create another object using allocate
box2 = Box.allocate

# call instance method using box1
a = box1.getArea()
puts "Area of the box is : #{a}"

begin
  # call instance method using box2
  a = box2.getArea()
  puts "Area of the box is : #{a}"
rescue Exception => e
  puts "Got non initialized exception #{e.message}\n #{e.backtrace()}"
ensure  
  puts "finally executed"    
end


