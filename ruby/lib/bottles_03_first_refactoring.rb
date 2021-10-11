class Bottles	
	def verse(num)
		plural = ""
		case num
		when 0
			"No more bottles of beer on the wall, no more bottles of beer.\n" +
			"Go to the store and buy some more, 99 bottles of beer on the wall.\n"
		when 1
			"1 bottle of beer on the wall, 1 bottle of beer.\n" +
			"Take it down and pass it around, no more bottles of beer on the wall.\n"
		else
			"#{num} bottles of beer on the wall, #{num} #{container(num)} of beer.\n" +
			"Take one down and pass it around, #{num-1} #{container(num-1)} of beer on the wall."
		end
	end
	
	def container(num)
		if num == 1
			"bottle"
		else
			"bottles"
		end
	end
	
	def verses(from, to)
		if from <= to
			return
		end
		
		from.downto(to).map {|i| verse(i)}.join("\n")
	end
	
	def song()
		return verses(99, 0)
	end
end