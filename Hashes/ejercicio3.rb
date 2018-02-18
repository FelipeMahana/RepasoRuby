inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
puts "\nMenu"
opcion = 0
while opcion!=7
	puts "\nSeleccione una accion a realizar"
	puts "1-Agregar Stock:"
	puts "2-Eliminar stock"
	puts "3-Actualizar Stock"
	puts "4-Visualizar stock total:"
	puts "5-Visualizar item con mayor stock"
	puts "6-Comprobar stock"
	puts "7-Sair"
	print "\nOpcion: "
	opcion = gets.chomp.to_i
	case opcion
	when 1
		puts "\nAgregar stock con nombre separado por una coma y el stock (Ejm: Pendrives, 100)"
		agregar=gets.chomp
		agregar1,agregar2=agregar.split(', ')
		inventario[agregar1.to_sym] = agregar2.to_i
		puts inventario
	when 2
		puts "\nSelecciona el item a eliminar: "
		eliminar=gets.chomp.to_sym
		inventario.delete(eliminar)
		print "#{inventario}\n"

	when 3
		print "#{inventario}\n"
		puts "\nSeleccione el producto a actualizar: "
		actualizar=gets.chomp.to_sym
		puts "\nSeleccione la cantidad nueva: "
		nuevostock=gets.chomp.to_i
		inventario.each do |llave, valor|
			if llave == actualizar
				inventario[llave]=nuevostock
			end
		end
		puts inventario
	when 4
		stock_total=inventario.inject(0){|sum,(llave,valor)| sum+valor}
		puts "\nEl stock total es: #{stock_total}"
	when 5
		a=inventario.max_by{|llave, valor| valor}
		puts "\nEl item con mayor stock es: #{a[0]}"
	when 6
		puts "\nIngrese el inventario que desea comprobr si existe:"
		comprobar=gets.chomp.to_sym
		inventario.each { |llave, valor|  puts "Si" if llave==comprobar}
	when 7
		return opcion=7
	else
		puts "\nOpcion no valida, seleccione una opcion del menu!"
	end
end