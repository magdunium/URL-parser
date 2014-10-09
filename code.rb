require 'fileutils'

print "Podaj ścieżkę dostępu: "

filepath = gets.chomp

file_in = open(filepath)

empt_arr = []

extensions = ["co", "com"]
  
file_in.each {
    |element| 
    a = element.split("/")[2]
    b = a.split(".")
      if extensions.include?(b[-2])
        b = b[-3..-1].join(".")
      else
        b = b[-2..-1].join(".")
      end
    empt_arr << b  
  }

empt_arr.uniq!

file_out = File.open('/file/path/filename', 'w+')

empt_arr.each {
 |line|
 file_out << line + "\n"
}

print "Koniec programu"
