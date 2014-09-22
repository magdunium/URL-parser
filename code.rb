require 'fileutils'
file_in = File.open('/file/path', 'r+')

pusta_tablica = []
  
file_in.each {
    |element| 
    a = element.split("/")[2]
    b = a.split(".")[-2..-1]
      b = b[-2..-1].join(".")
    pusta_tablica << b  
  }

pusta_tablica.uniq!


file_out = File.open('/second/file/path', 'w+')

pusta_tablica.each {
 |line|
 file_out << line + "\n"
}
