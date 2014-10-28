require 'fileutils'
require 'time'

time = Time.now

print "Witaj, dziś jest: " + time.httpdate + "\n"
print "Podaj ścieżkę dostępu: "

filepath = gets.chomp #pobieranie ścieżki do pliku
file = filepath

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

#wydzielanie rozszerzenie i zmiana nazwy pliku na plik1.txt
file_name = file.split(".txt")[-1]
file_name = file_name + '1' + '.txt'
file_out = File.open(file_name, 'w+')

#zapisywanie do tablicy wyników z uniq
empt_arr.each {
 |line|
 file_out << line + "\n"
}

puts "Koniec programu"
