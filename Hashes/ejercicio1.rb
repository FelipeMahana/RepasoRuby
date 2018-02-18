h = {"x": 1, "y":2}
h[:z] = 3
puts h
h[:x]=5
puts h
h.delete(:z)
puts h
h.each { |llave, valor|  puts "yeaahh" if llave==:z}
puts h.invert