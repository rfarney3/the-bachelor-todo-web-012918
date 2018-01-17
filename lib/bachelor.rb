require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  winner = nil
  data.each do |szn, contestants_array|
  	if season == szn
  		contestants_array.each do |candidate|
  			if candidate["status"] == "Winner"
  				winner = candidate["name"].split(' ')
  				winner = winner[0]
  			end
  			end
  		end
  	end
  	winner
end


def get_contestant_name(data, occupation)
  # code here
  name = nil

  data.each do |season, array|
  	array.each do |candidate|
  		if candidate["occupation"] == occupation
  			name = candidate["name"]
  		end end
  	end
  	name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  number = 0

  data.each do |season, array|
  	array.each do |candidate|
  		if candidate["hometown"] == hometown
  			number += 1
  			end
  		end
  	end
  	number
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, array|
  	array.each do |candidate|
  		if candidate["hometown"] == hometown
  			return candidate["occupation"]
  			end
  		end
  	end
end

def get_average_age_for_season(data, season)
  # code here
  sum = 0
  divisor = nil
  data.each do |szn, array|
  	if szn == season
  		array.each do |candidate|
  			sum += candidate["age"].to_f
  			divisor = array.length
  			end
  		end
  	end
  	return (sum / divisor).round
end
