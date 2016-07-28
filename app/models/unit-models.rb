require 'pry'

class Temperature
	def initialize(temp_input)
		@temp_input = temp_input
	end

	def celciusToFahrenheit()
		(@temp_input*1.8)+32
	end

	def fahrenheitToCelcius()
		(@temp_input-32)*(0.5556)
	end

end



class Distance
	def initialize(dist_input)
		@dist_input = dist_input
	end

	def milesToKilometers()
		@dist_input * 1.609344
	end

	def kilometersToMiles()
		@dist_input / 1.609344
	end
end


class Weight
	def initialize(weight_input)
		@weight_input = weight_input
	end

	def stonesToPounds()
		@weight_input * 14
	end

	def stonesToKilograms()
		@weight_input * 6.35029318
	end

	def poundsToStones()
		@weight_input / 14
	end

	def poundsToKilograms()
		@weight_input * 0.45359237
	end

	def kilogramsToPounds()
		@weight_input / 0.45359237
	end

	def kilogramsToStones()
		@weight_input / 6.35029318
	end
end




