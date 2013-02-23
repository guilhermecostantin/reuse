class MlpsController < ApplicationController
  # GET /mlps
  # GET /mlps.json
  def index
    @mlps = Mlp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mlps }
    end
  end

  # GET /mlps/1
  # GET /mlps/1.json
  def show
    @mlp = Mlp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mlp }
    end
  end

  def treina_mlp
    

  end

  # GET /mlps/new
  # GET /mlps/new.json
  def new
    @mlp = Mlp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mlp }
    end
  end

  # GET /mlps/1/edit
  def edit
    @mlp = Mlp.find(params[:id])
  end

  # POST /mlps
  # POST /mlps.json
  def create
    @mlp = Mlp.new(params[:mlp])

    respond_to do |format|
      if @mlp.save
        format.html { redirect_to @mlp, notice: 'Mlp was successfully created.' }
        format.json { render json: @mlp, status: :created, location: @mlp }
      else
        format.html { render action: "new" }
        format.json { render json: @mlp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mlps/1
  # PUT /mlps/1.json
  def update
    @mlp = Mlp.find(params[:id])

    respond_to do |format|
      if @mlp.update_attributes(params[:mlp])
        format.html { redirect_to @mlp, notice: 'Mlp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mlp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mlps/1
  # DELETE /mlps/1.json
  def destroy
    @mlp = Mlp.find(params[:id])
    @mlp.destroy

    respond_to do |format|
      format.html { redirect_to mlps_url }
      format.json { head :no_content }
    end
  end
end
