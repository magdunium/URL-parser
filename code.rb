require 'fileutils'
require 'time'

time = Time.now

print "Witaj, dziś jest: " + time.httpdate + "\n"
print "Podaj ścieżkę dostępu: "

filepath = gets.chomp #pobieranie ścieżki do pliku

file_in = open(filepath) 

empt_arr = []

extensions = ["co", "com"] #tablica z wyjątkami dla stron typu strona.com.pl
  
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

#/home/madia/Programy/Ruby/URL-parser/GT-profile.txt
file_out = File.open('/home/madia/Programy/Ruby/URL-parser/GT-test1.txt', 'w+')

empt_arr.each {
 |line|
 file_out << line + "\n"
}

print "Koniec programu"
