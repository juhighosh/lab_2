# Part1: Hello World
class HelloWorldClass
    def initialize(name)
       @name = name.capitalize
    end
    def sayHi
        puts "Hello #{@name}!"
    end
end
hello = HelloWorldClass.new("Juhi")
hello.sayHi

#Part2: Strings

#a

def palindrome?(string)
string1 = string.downcase.gsub(/[^a-z]/,'')
p string1 == string1.reverse

end

palindrome?("A man, a plan, a canal -- Panama")
palindrome?("Madam, I'm Adam!")
palindrome?("Abracadabra")

#b

def count_words(string)
words = Hash.new(0)
string.downcase.scan(/\w+/).map{|word| words[word] = string.downcase.scan(/\b#{word}\b/).size}
p words
end

count_words("A man, a plan, a canal -- Panama")
count_words("Doo bee doo bee doo")
