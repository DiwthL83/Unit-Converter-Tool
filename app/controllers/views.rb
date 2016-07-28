require 'pry'

MyApp.get '/' do

	erb :"/home" 
end


MyApp.post '/temperature' do
	@temp_input = params[:temp_input].to_f
	@conv_type = params[:temp_choices]

	t = Temperature.new(@temp_input)

	if @conv_type == "c_to_f"
		@temp_result = t.celciusToFahrenheit.round(2)
	elsif @conv_type ==  "f_to_c"
		@temp_result = t.fahrenheitToCelcius.round(2)
	end
# binding.pry
	erb :"converter/temperature"
end


MyApp.get '/temperature' do
	erb :"converter/temperature"
end



MyApp.post '/distance' do
	@dist_input = params[:dist_input].to_f
	@dist_conv = params[:dist_choices]

	d = Distance.new(@dist_input)

	if @dist_conv == "k_to_m"
		@dist_result = d.kilometersToMiles.round(2)
	elsif @dist_conv ==  "m_to_k"
		@dist_result = d.milesToKilometers.round(2)
	end
	erb :"converter/distance"
end


MyApp.get '/distance' do
	erb :"converter/distance"
end


MyApp.post '/weight' do
	@weight_input = params[:weight_input].to_f
	@weight_conv = params[:weight_choices]

	w = Weight.new(@weight_input)

	if @weight_conv == "st_to_lb"
		@weight_result = w.stonesToPounds.round(2)
	elsif @weight_conv ==  "st_to_kg"
		@weight_result = w.stonesToKilograms.round(2)
	elsif @weight_conv ==  "lb_to_kg"
		@weight_result = w.poundsToKilograms.round(2)
	elsif @weight_conv ==  "lb_to_st"
		@weight_result = w.poundsToStones.round(2)
	elsif @weight_conv ==  "kg_to_st"
		@weight_result = w.kilogramsToStones.round(2)
	elsif @weight_conv ==  "kg_to_lb"
		@weight_result = w.kilogramsToPounds.round(2)
	end
	erb :"converter/weight"
end


MyApp.get '/weight' do
	erb :"converter/weight"
end

