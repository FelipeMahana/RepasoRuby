nombres= ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia","Ray"]
nombres.each { |valor| nombres.delete(valor) if valor.length>5}
print "#{nombres}\n"
aux = []
aux = nombres.map { |e| e.downcase  }
print "#{aux}\n"
aux = []
aux = nombres.map { |e| e.size  }
print "#{aux}\n"