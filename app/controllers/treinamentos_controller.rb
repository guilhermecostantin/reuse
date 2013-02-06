class TreinamentosController < ApplicationController
  # GET /treinamentos
  # GET /treinamentos.json
  def index
    @treinamentos = Treinamento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @treinamentos }
    end
  end

  # GET /treinamentos/1
  # GET /treinamentos/1.json
  def show
    @treinamento = Treinamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @treinamento }
    end
  end
  
  def chama_treinamento
    rede = Rede.new
    treinamentos = Treinamento.all
    rede.treina treinamentos
    @rede = rede
    respond_to do |format|
      format.html # treina.html.erb
      format.json { render json: @pesos }
    end
  end

  def treina
    parada = 60.times.map { 0 }
    pesos = Array.new
    pesos = 5.times.map { rand().round(2) }
    alfa = 0.0025 
    epoca = 0
    treinamentos = Treinamento.all
   
    while parada.include?(0)
      treinamentos.each_with_index do |treinamento, i|
        parada, pesos = calcula_peso i, treinamento.entradas, pesos, treinamento.target, parada, alfa
      end
      epoca+=1
    end
    @epocas = epoca
    @pesos = pesos
    respond_to do |format|
      format.html # treina.html.erb
      format.json { render json: @pesos }
    end
  end

  def calcula_peso i, entradas, pesos, target, parada, alfa
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

  # GET /treinamentos/new
  # GET /treinamentos/new.json
  def new
    @treinamento = Treinamento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @treinamento }
    end
  end

  # GET /treinamentos/1/edit
  def edit
    @treinamento = Treinamento.find(params[:id])
  end

  # POST /treinamentos
  # POST /treinamentos.json
  def create
    @treinamento = Treinamento.new(params[:treinamento])

    respond_to do |format|
      if @treinamento.save
        format.html { redirect_to @treinamento, notice: 'Treinamento was successfully created.' }
        format.json { render json: @treinamento, status: :created, location: @treinamento }
      else
        format.html { render action: "new" }
        format.json { render json: @treinamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /treinamentos/1
  # PUT /treinamentos/1.json
  def update
    @treinamento = Treinamento.find(params[:id])

    respond_to do |format|
      if @treinamento.update_attributes(params[:treinamento])
        format.html { redirect_to @treinamento, notice: 'Treinamento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @treinamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treinamentos/1
  # DELETE /treinamentos/1.json
  def destroy
    @treinamento = Treinamento.find(params[:id])
    @treinamento.destroy

    respond_to do |format|
      format.html { redirect_to treinamentos_url }
      format.json { head :no_content }
    end
  end
end
