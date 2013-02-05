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
