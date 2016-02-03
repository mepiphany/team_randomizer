team_count = 2
people = [1,2,3,4,5,6,7]
teams = []
puts "original people #{people}"
# create team_count number of teams
team_count.times do |i|
  teams.push [people.pop]
end
# fill the existing teams with the people are left
# teams.each do |team|
#   # next if people.empty?
#   team.push people.pop
# end

while (people.count > 0)
  i = rand(0..teams.count-1)
  teams[i] = teams[i].push people.pop
end

puts "teams are: #{teams} and people left are #{people}"
# a =(1..10)
# puts a
# a.each_slice(4) {|a| p a}
puts "****************************"
teams.each_with_index do |team_array, index|
  puts "Team #{index+1}"
  puts "----------------"
  puts team_array.join(",")
  puts ""
end
