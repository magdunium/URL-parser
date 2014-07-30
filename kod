tablica = %w{
  http://woda.pl/profil1
  http://woda.pl/profil2
  http://www.dubel.com/djnsiv
  http://incognito.uk
  https://incognito.uk/profil1
  }
  pusta_tablica = []
  
  tablica.each {
    |element| 
    a = element.split("/")[2]
    b = a.split(".")
      if b[0] == "www"
        b = b[1..-1].join(".")
      else
        b = b[0..-1].join(".")
      end
        pusta_tablica << [b]
  }
  
puts pusta_tablica.uniq!

