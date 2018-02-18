restaurant_menu = { "Ramen"=> 3, "Dal Makhani"=> 4, "Coffee"=> 2 }
puts restaurant_menu

puts "Parte 1"
a=restaurant_menu.max_by{|llave, valor| valor}
puts a[0]
a=Hash.new
puts "Parte 2" 
a=restaurant_menu.min_by{|llave, valor| valor}
puts a[0]
puts "Parte 3"
a=Hash.new
a=restaurant_menu.inject(0){|sum,(llave,valor)| sum+valor}
puts (a/3)

puts "Parte 4"
array=[]
i=0
restaurant_menu.each do |llave,valor| 
	array[i] = llave
	i+=1
end
print array

puts "\nParte 5"
array=[]
i=0
restaurant_menu.each do |llave,valor| 
	array[i] = valor
	i+=1
end
print array

puts "\nParte 6"
restaurant_menu.update(restaurant_menu) { |e,a| a*1.19 }
print restaurant_menu

puts "\nParte 7"
restaurant_menu.each do |llave, valor|
	if llave.include? ' '
		restaurant_menu[llave]=(valor*=0.8)
		#restaurant_menu.update(restaurant_menu) { |e,a| a*0.8 }
	end
end
print restaurant_menu