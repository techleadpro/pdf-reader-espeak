require 'date'
require 'time'
require 'json'
require 'espeak'
require 'rubygems'
require 'pdf-reader'


class App

def reader1(text)

text1 = text

text2 = ESpeak::Speech.new("#{text1}", voice: "mb-en1", pitch: 90, speed: 130)
text2.speak # invokes espeak


end


end


r1 = App.new


=begin
reader = PDF::Reader.new("/home/Jens/Desktop/ruby/reader/Learning-Ruby.pdf")

read = ""
reader.pages.each do |page|
  
 ## puts page.text
  read << page.text + "\n"

end


=end

## To pdf save file to text 
=begin
 open('ruby.txt', 'w') do |file|
        file.puts read
 end
=end

#text = read


file = File.open("/home/Jens/Desktop/ruby/reader/ruby.txt")
file.each{|line| r1.reader1(line)}

#puts file
#text = file



#puts text
#r1.reader1(text)
