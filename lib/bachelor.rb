
def get_first_name_of_season_winner(data, season)
  #code here
  winner = ""
  data.each do |season_name, season_data| #season_data is an array of each contestant (hash)
    if season_name == season
      season_data.each do |contestant|
        if contestant["status"] == "Winner"
          winner = contestant["name"]
        end
      end
    end
  end
  winner.split(" ")[0]
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_name, season_data|
    season_data.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  contestant_count = 0
  data.each do |season_name, season_data|
    season_data.each do |contestant|
      if contestant["hometown"] == hometown
        contestant_count += 1
      end
    end
  end
  contestant_count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_name, season_data|
    season_data.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_total = 0
  contestants_total = 0
  data.each do |season_name, season_data| #season_data is an array of each contestant (hash)
    if season_name == season
      season_data.each do |contestant|      #REJECT could have used .select - rejects anything that isn't true, only returns a collection of what is true  #COERCE .map/.collect are coersive methods
        age_total += contestant["age"].to_i #ACT .each is the actionlea, not the return value!!!
        contestants_total += 1
      end
    end
  end
  return (age_total.to_f / contestants_total).round(0) #RETURN is what is the return value of the whole method
  #.floor rounds down .ceil rounds up
end
