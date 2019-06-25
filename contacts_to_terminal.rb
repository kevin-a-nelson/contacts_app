require 'http'

response = HTTP.get('http://localhost:3000/api/contact')

contacts = response.parse

contacts['all_contacts'].each do |contact|
  puts
  contact.each do |key,value|
    puts "#{key}: #{value}" unless key == 'created_at' || key == 'updated_at'
  end
end
