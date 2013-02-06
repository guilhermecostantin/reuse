class RedesController < ApplicationController
  # GET /redes
  # GET /redes.json
  def index
    @redes = Rede.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @redes }
    end
  end

  # GET /redes/1
  # GET /redes/1.json
  def show
    @rede = Rede.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rede }
    end
  end

  def valida
    @rede = Rede.find(params[:id])
    validacoes = Validacao.all
    @total, @certas = @rede.valida validacoes
    @porcentagem_correta = ((@certas.to_f/@total)*100).to_i
    @porcentagem_errada = (((@total-@certas).to_f/@total)*100).to_i
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rede }
    end
  end
  # GET /redes/new
  # GET /redes/new.json
  def new
    @rede = Rede.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rede }
    end
  end

  # GET /redes/1/edit
  def edit
    @rede = Rede.find(params[:id])
  end

  # POST /redes
  # POST /redes.json
  def create
    @rede = Rede.new(params[:rede])

    respond_to do |format|
      if @rede.save
        format.html { redirect_to @rede, notice: 'Rede was successfully created.' }
        format.json { render json: @rede, status: :created, location: @rede }
      else
        format.html { render action: "new" }
        format.json { render json: @rede.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /redes/1
  # PUT /redes/1.json
  def update
    @rede = Rede.find(params[:id])

    respond_to do |format|
      if @rede.update_attributes(params[:rede])
        format.html { redirect_to @rede, notice: 'Rede was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rede.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /redes/1
  # DELETE /redes/1.json
  def destroy
    @rede = Rede.find(params[:id])
    @rede.destroy

    respond_to do |format|
      format.html { redirect_to redes_url }
      format.json { head :no_content }
    end
  end
end
