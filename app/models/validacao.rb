class Validacao < ActiveRecord::Base
  attr_accessible :entrada1, :entrada2, :entrada3, :entrada4, :entrada5, :target

 def entradas
 	e = Array.new
 	e.push(entrada1, entrada2, entrada3, entrada4, entrada5)
 	return e
 end

  def valida_rede pesos
  	20.times do |i|
	    verifica i, y[i], pesos
	end
  end


private
	
	def verifica i, entradas, pesos
	    
	    somatorio = 0
	    entradas.each_with_index do |x, index|
	        somatorio += x*pesos[index]      
	    end
	    saida = somatorio >= 0 ? 1 : -1
	    tipo =
	        if saida == -1
	            "Iris-virginica"
	        else
	            "Iris-setosa"
	        end
	    return saida, tipo
	end


end
