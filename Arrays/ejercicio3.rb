def elim_pares(arreglo)
	arreglo.each {|valor|if valor.even?
		arreglo.delete(valor)	
	end}
	print "#{arreglo}\n"
end

def suma_todos(arreglo)
	sum=0
	arreglo.each {|valor| sum+=valor}
	puts sum
end

def prom(arreglo)
	prom=0
	sum=0
	arreglo.each {|valor| sum+=valor}
	prom=sum/(arreglo.size)
	puts prom
end

def nombreoriginal(arreglo)
	nuev=[]
	arreglo.each_with_index{|valor,indice| nuev[indice]=valor+1}
	print "#{nuev}\n"
end


arreglo=[1,2,3,9,1,4,5,2,3,6,6]
elim_pares(arreglo)
suma_todos(arreglo)
prom(arreglo)
nombreoriginal(arreglo)