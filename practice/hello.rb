names = ["mike","jen","evan","chris","tien","tony","mark","tom","jen","sam"]
groups = []
number_of_teams = 5

number_of_teams.times do |x|
  groups << []
end

puts groups
#
#
#
# names.each_with_index do |name, index|
#   groups[index % x] << name
# end
#
# groups.each_with_index do |name,index|
#     name = name.join("\n")
#     puts "\nTeam#{index+1}:\n \n#{name}"
# end
#
#
# print groups
