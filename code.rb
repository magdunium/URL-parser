require 'fileutils'

def getUniqueLinksFromFile(filepath, extensionsInFile)
  emptyArray = []
  fileIn = open(filepath)  
  fileIn.each {
      |element| 
      a = element.split("/")[2]
      b = a.split(".")
        if extensionsInFile.include?(b[-2])
          b = b[-3..-1].join(".")
        else
          b = b[-2..-1].join(".")
        end
      emptyArray << b  
    }
  fileIn.close()
  emptyArray.uniq!
  return emptyArray
end

def createNewFileName(filepath)
  fileName = filepath.split(".txt")[-1]
  fileName = fileName + '1' + '.txt'
  return fileName
end

def storeUniqLinksInFile(fileName, uniqueLinks) 
  fileOut = File.open(fileName, 'w+')
  uniqueLinks.each {
   |line|
   fileOut << line + "\n"
  }
end

def getFilepathFromUser()
  print "Podaj ścieżkę dostępu: "
  filepath = gets.chomp
  return filepath
end

extensionsInFile = ["co", "com"]

filepath = getFilepathFromUser()
uniqueLinks = getUniqueLinksFromFile(filepath, extensionsInFile)
newFileName = createNewFileName(filepath)
storeUniqLinksInFile(newFileName, uniqueLinks)

puts "Koniec programu"
