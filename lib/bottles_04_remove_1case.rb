class Bottles	
	def verse(num)
		plural = ""
		case num
		when 0
			"No more bottles of beer on the wall, no more bottles of beer.\n" +
			"Go to the store and buy some more, 99 bottles of beer on the wall.\n"
		else
			"#{num} #{container(num)} of beer on the wall, #{num} #{container(num)} of beer.\n" +
			"Take #{pronoun(num)} down and pass it around, #{quantity(num-1)} #{container(num-1)} of beer on the wall.\n"
		end
	end
	
	def container(num)
		if num == 1
			"bottle"
		else
			"bottles"
		end
	end
	
	def pronoun(num)
		if num == 1
			"it"
		else
			"one"
		end
	end
	
	def quantity(num=0)
		if num == 0
			"no more"
		else
			num
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