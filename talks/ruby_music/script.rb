require './ugly_wasp.rb'

wasp = UglyWasp.new

i = 0
loop do 
  puts i += 1
  wasp.hum(((((i**i) * 2) % 24) + 60), 100)
  sleep 0.2
end
