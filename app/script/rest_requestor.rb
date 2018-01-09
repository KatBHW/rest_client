require 'rest-client'

puts "Which page do you require?"
page = gets.chomp

if page == "index"
	url = "http://localhost:3000/users"
elsif page == "new"
	url = "http://localhost:3000/users/new"
elsif page == "show"
	url = "http://localhost:3000/users/1"
elsif page == "edit"
	url = "http://localhost:3000/users/1/edit"
end

puts RestClient.get(url)

