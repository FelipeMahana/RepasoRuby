arreglo = [1,2,3,9,1,4,5,2,6,6]
arreglo.pop
print arreglo
puts
arreglo.shift
print arreglo
if arreglo.size.even?
	arreglo.delete_at((arreglo.size/2)-1)
	puts 
	print arreglo
else
	arreglo.delete_at(arreglo.size/2)
	puts 
	print arreglo
end
if arreglo[-1]!=1
	arreglo.pop
end
puts
print arreglo
aux = []
largo=arreglo.size
largo.to_i
largo.times do
	aux.push(arreglo.pop)
end
puts
print aux