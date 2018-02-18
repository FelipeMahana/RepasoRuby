def promedio (h)
	a=h.inject(0){|sum,(llave,valor)| sum+valor}
end

personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

a=personas.zip(edades).to_h

print a
puts
prom=promedio(a)
puts prom.to_f/a.size