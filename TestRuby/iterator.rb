require 'tmpdir'

ary = [1,2,3,4,5]
ary.each do |i|
   puts i
end

a = [1,2,3,4,5]
b = Array.new
b = a.collect
puts b.inspect

a = [1,2,3,4,5]
b = a.collect{|x| 10*x}
puts b

aFile = File.new("./test.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
   aFile.each_byte {|ch| putc ch; putc ?. }
else
   puts "Unable to open file!"
end

# ? represents character in Ruby

arr = IO.readlines("./test.txt")
puts arr[0]
puts arr[1]

IO.foreach("test.txt"){|block| puts block}

puts Dir.pwd

# puts Dir.entries("/Users/zhangpe").join(' ')



   tempfilename = File.join(Dir.tmpdir, "tingtong")
   puts tempfilename
   tempfile = File.new(tempfilename, "w")
   tempfile.puts "This is a temporary file "
   
   puts "This is a temporary file #{tempfile.path}"
   tempfile.close      
   File.delete(tempfilename)
   
require 'tempfile'
   f = Tempfile.new('tingtong')
   f.puts "Hello"
   puts f.path
   f.close
      
   
begin
   file = open("/unexistant_file")
   if file
      puts "File opened successfully"
   end
rescue
      file = STDIN
end
print file, "==", STDIN, "\n"

begin  
    puts 'I am before the raise.'  
    raise 'An error has occurred.'  
    puts 'I am after the raise.'  
rescue  
    puts 'I am rescued.'  
end  
puts 'I am after the begin block.'  

begin  
  raise 'A test exception.'  
rescue Exception => e  
  puts e.message  
  puts e.backtrace.inspect  
end  

begin
  raise 'A thrown exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
ensure
  puts "Ensuring execution"
end
   
   
begin
 # raise 'A test exception.'
 puts "I'm not raising exception"
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
else
   puts "Congratulations-- no errors!"
ensure
  puts "Ensuring execution"
end

# def promptAndGet(prompt)
   # print prompt
   # res = readline.chomp
   # throw :quitRequested if res == "!"
   # return res
# end
# 
# promptAndGet("Name:")
# 
# catch :quitRequested do
   # name = promptAndGet("Name: ")
   # age = promptAndGet("Age: ")
   # sex = promptAndGet("Sex: ")
   # # ..
   # # process information
# end

   
