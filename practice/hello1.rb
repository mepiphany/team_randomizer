names = ["mike","jen","evan","chris","tien","mike","jen","evan","chris","tien"]
array = []
number_of_teams = 8
teams = (names.length.to_f / number_of_teams).ceil

teams.times do |x|
  array << []
end


names.each_with_index do |names,index|
  array[index % teams] << names
end

print array
