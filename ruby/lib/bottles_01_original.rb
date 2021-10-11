class Bottles
	def initialize()
	end
	
	def verse(num)
		plural = ""
		if num > 2
			plural = "s"
		elsif num == 1
			return one_verse
		elsif num == 0
			return last_verse
		end
		
		return "#{num} bottles of beer on the wall, #{num} bottles of beer.
Take one down and pass it around, #{num-1} bottle#{plural} of beer on the wall.
"
	end
	
	def one_verse
		"1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
"
	end
	
	def last_verse
		"No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
"
	end
	
	def verses(from, to)
		if from <= to
			return
		end
		
		verselist = []
		from.downto(to).each do |num|
			verselist.push(verse(num))
		end
		return verselist.join("\n")
	end
	
	def song()
		return verses(99, 0)
	end
end