class Rede < ActiveRecord::Base
	attr_accessible :epocas, :peso1, :peso2, :peso3, :peso4, :peso5
  
	def pesos
		p = Array.new
		p.push(peso1, peso2, peso3, peso4, peso5)
		return p
	end


	def treina treinamentos

		parada = 60.times.map { 0 }
		pesos = Array.new
		pesos = 5.times.map { rand().round(2) }
		alfa = 0.0025 
		epoca = 0

		while parada.include?(0)
		  treinamentos.each_with_index do |treinamento, i|
		    parada, pesos = calcula_peso i, treinamento.entradas, pesos, treinamento.target, parada, alfa
		  end
		  epoca+=1
		end
		self.epocas = epoca
		self.peso1 = pesos[0]
		self.peso2 = pesos[1]
		self.peso3 = pesos[2]
		self.peso4 = pesos[3]
		self.peso5 = pesos[4]
		self.save


	end

	def valida validacoes
	  	total = validacoes.count
	  	certas = 0
	  	validacoes.each_with_index do |validacao|
		    saida = calcula_saida validacao.entradas
		    certas += saida == validacao.target ? 1 : 0
		end
		return total, certas
	end


private
	def calcula_saida entradas, pesos=pesos
		somatorio = 0
		entradas.each_with_index do |x, index|
		    somatorio += x*pesos[index]      
		end
		saida = somatorio >= 0 ? 1 : -1		
	end		


	def calcula_peso i, entradas, pesos, target, parada, alfa
	
	  saida = calcula_saida entradas, pesos

	  parada[i] =
	      if saida == target
	           1
	      else
	          entradas.each_with_index do |x, index|
	              pesos[index] += alfa*x*target
	          end     
	          0
	      end
	    
	  return parada, pesos
	end

end
