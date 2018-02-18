arreglo = [1,2,3,9,1,4,5,2,6,6]

puts arreglo[0]
puts arreglo[-1]
print arreglo
puts
arreglo.each_with_index{|valor,indice| print "Valor:#{valor}, Indice:#{indice} "}
puts
arreglo.each_with_index{|valor,indice| print "Valor:#{valor} " if indice.even?}
puts 'Ingrese valor para ver si se encuentra en arreglo:'
numero=gets.chomp.to_i
cont=0
arreglo.each {|valor| cont+=1 if valor==numero}
if cont>=1
	puts "si"
else
	puts "no"
end