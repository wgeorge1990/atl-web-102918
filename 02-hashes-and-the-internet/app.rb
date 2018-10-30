require 'rest-client'
require 'json'

puts "Type your search term here:"
search_term = gets.chomp
puts "the term was #{search_term}"

url = "https://www.googleapis.com/books/v1/volumes?q=#{search_term}"

puts url

results = RestClient.get(url)
results_hash = JSON.parse(results)
results_hash["items"].each do |item|
  
end
