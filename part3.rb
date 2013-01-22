def combine_anagrams(words)
 wordhash = {}
 words.each {|word|
 	hash = word.downcase.chars.sort.join
 	unless wordhash[hash] 
 		wordhash[hash] = []
 	end
 	wordhash[hash] << word
 }
wordhash.values
end

