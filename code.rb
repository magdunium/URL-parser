require 'fileutils'
file_in = File.open('/file/path', 'r+')

empt_arr = []
  
file_in.each {
    |element| 
    a = element.split("/")[2]
    b = a.split(".")
      if b[-2] == "co" or b[-2] == "com"
        b = b[-3..-1].join(".")
      else
        b = b[-2..-1].join(".")
      end
    empt_arr << b  
  }

empt_arr.uniq!
