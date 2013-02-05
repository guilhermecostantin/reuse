class ValidacoesController < ApplicationController
  # GET /validacoes
  # GET /validacoes.json
  def index
    @validacoes = Validacao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @validacoes }
    end
  end

  # GET /validacoes/1
  # GET /validacoes/1.json
  def show
    @validacao = Validacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @validacao }
    end
  end

  # GET /validacoes/new
  # GET /validacoes/new.json
  def new
    @validacao = Validacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @validacao }
    end
  end

  # GET /validacoes/1/edit
  def edit
    @validacao = Validacao.find(params[:id])
  end

  # POST /validacoes
  # POST /validacoes.json
  def create
    @validacao = Validacao.new(params[:validacao])

    respond_to do |format|
      if @validacao.save
        format.html { redirect_to @validacao, notice: 'Validacao was successfully created.' }
        format.json { render json: @validacao, status: :created, location: @validacao }
      else
        format.html { render action: "new" }
        format.json { render json: @validacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /validacoes/1
  # PUT /validacoes/1.json
  def update
    @validacao = Validacao.find(params[:id])

    respond_to do |format|
      if @validacao.update_attributes(params[:validacao])
        format.html { redirect_to @validacao, notice: 'Validacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @validacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /validacoes/1
  # DELETE /validacoes/1.json
  def destroy
    @validacao = Validacao.find(params[:id])
    @validacao.destroy

    respond_to do |format|
      format.html { redirect_to validacoes_url }
      format.json { head :no_content }
    end
  end
end
