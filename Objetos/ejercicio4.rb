class Car
	@@t_instances = 0
	@@q_instances = 0
	def self.contarT
		@@t_instances+=1
	end
	def self.contarQ
		@@q_instances+=1
	end

	def self.imprimir_contadorT
		@@t_instances
	end

	def self.imprimir_contadorQ
		@@q_instances
	end

end

class T<Car
	attr_reader :cantidadT
	def initialize
		@cantidadT=Car.contarT
	end
end

class Q<Car
	attr_reader :cantidadQ
	def initialize
		@cantidadQ=Car.contarQ
	end
end

20.times do 
	T.new
end

25.times do
	Q.new
end

puts Car.imprimir_contadorT
puts Car.imprimir_contadorQ
