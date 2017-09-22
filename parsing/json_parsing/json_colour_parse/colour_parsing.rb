require 'json'

file = JSON.parse (File.read("colours.json"))

# p file['colors']

(0..file['colors'].length-1).each do |i|

    puts " colours: #{file['colors'][i]['color']} "
    puts " rgba: #{file['colors'][i]['code']['rgba']}"
    puts " Hex: #{file['colors'][i]['code']['hex']}"

end