#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.

def palindrome?(str)
str.split(/\W+/).join("").downcase == str.split(/\W+/).join("").downcase.reverse
end

def count_words(str)
	wordlist = str.split(/\W+/)
	countlist = {}
	wordlist.each {|x| 
		x.downcase!
		if countlist[x] 
		countlist[x] = countlist[x] + 1
		else 
		countlist[x] = 1
		end
	}
	countlist
end


