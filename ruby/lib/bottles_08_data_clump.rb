class Bottles	
	def verse(num)
		bottle_number = BottleNumber.new(num)
		next_bottle_number = BottleNumber.new(bottle_number.successor)

		"#{bottle_number} of beer on the wall, ".capitalize + 
		"#{bottle_number} of beer.\n" +
		"#{bottle_number.action}, ",
		"#{next_bottle_number} of beer on the wall.\n"
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

class BottleNumber
	attr_reader :num
	def initialize(number)
		@num = number
	end

	def to_s
		"#{quantity} #{container}"
	end
	
	def container()
		if num == 1
			"bottle"
		else
			"bottles"
		end
	end
	
	def successor()
		if num == 0
			99
		else 
			num - 1
		end
	end
	
	def pronoun()
		if num == 1
			"it"
		else
			"one"
		end
	end
	
	def quantity()
		if num == 0
			"no more"
		else
			num.to_s
		end
	end
	
	def action()
		if num == 0
			"Go to the store and buy some more"
		else 
			"Take #{pronoun} down and pass it around"
		end
	end
end