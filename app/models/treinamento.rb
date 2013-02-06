class Treinamento < ActiveRecord::Base
  attr_accessible :entrada1, :entrada2, :entrada3, :entrada4, :entrada5, :target




	def entradas
		a = Array.new
		a.push(entrada1, entrada2, entrada3, entrada4, entrada5)
		return a
	end


  def treina_rede
  	parada = 60.times.map { 0 }
	pesos = Array.new
	pesos = 5.times.map { rand().round(2) }
	alfa = 0.0025	
	epoca = 0
	
	while parada.include?(0)
	    60.times do |i|
	    	parada, pesos = calcula_peso i, x[i], pesos, target[i], parada, alfa
	    end
	    epoca+=1
	end

	return pesos, epoca
  	
  end



	def calcula_peso i, entradas,pesos, target, parada, alfa
	    somatorio = 0
	    entradas.each_with_index do |x, index|
	        somatorio += x*pesos[index]      
	    end
	    saida = somatorio >= 0 ? 1 : -1
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
