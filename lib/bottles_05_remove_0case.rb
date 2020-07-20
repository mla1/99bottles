class Bottles	
	def verse(num)
		"#{quantity(num).capitalize} #{container(num)} of beer on the wall, #{quantity(num)} #{container(num)} of beer.\n" +
		"#{action(num)}, #{quantity(successor(num))} #{container(successor(num))} of beer on the wall.\n"
	end
	
	def container(num)
		if num == 1
			"bottle"
		else
			"bottles"
		end
	end
	
	def successor(num)
		if num == 0
			99
		else 
			num - 1
		end
	end
	
	def pronoun(num)
		if num == 1
			"it"
		else
			"one"
		end
	end
	
	def quantity(num)
		if num == 0
			"no more"
		else
			num.to_s
		end
	end
	
	def action(num)
		if num == 0
			"Go to the store and buy some more"
		else 
			"Take #{pronoun(num)} down and pass it around"
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