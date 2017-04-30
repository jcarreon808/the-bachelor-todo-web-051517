def get_first_name_of_season_winner(data, season)
  winner =[]
  data[season].each do |hash|
    if hash['status'] === 'Winner'
      winner.push(hash['name'])
    end
  end
  winner[0].split(' ')[0]
end

def get_contestant_name(data, occupation)
  name=[]
  data.each do |season, array|
    array.each do |hash|
      if hash["occupation"] == occupation
        name.push(hash["name"])
      end
    end
  end
  name[0]
end

def count_contestants_by_hometown(data, hometown)
  count =0
  data.each do |season, array|
    array.each do |hash|
      if hash["hometown"] === hometown
        count+=1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  job =[]
  data.each do |season, array|
    array.each do |hash|
      if hash["hometown"] === hometown
        job.push(hash["occupation"])
      end
    end
  end
  job[0]
end

def get_average_age_for_season(data, season)
  ages = data[season].collect do |contestant|
    contestant["age"].to_i
  end
  avg = ages.inject(:+).to_f/ages.length.to_f
  avg.round
end
