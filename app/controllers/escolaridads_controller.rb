class EscolaridadsController < ApplicationController
  # GET /escolaridads
  # GET /escolaridads.json
  def index
    @escolaridads = Escolaridad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @escolaridads }
    end
  end

  # GET /escolaridads/1
  # GET /escolaridads/1.json
  def show
    @escolaridad = Escolaridad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @escolaridad }
    end
  end

  # GET /escolaridads/new
  # GET /escolaridads/new.json
  def new
    @escolaridad = Escolaridad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @escolaridad }
    end
  end

  # GET /escolaridads/1/edit
  def edit
    @escolaridad = Escolaridad.find(params[:id])
  end

  # POST /escolaridads
  # POST /escolaridads.json
  def create
    @escolaridad = Escolaridad.new(params[:escolaridad])

    respond_to do |format|
      if @escolaridad.save
        format.html { redirect_to @escolaridad, notice: 'Escolaridad was successfully created.' }
        format.json { render json: @escolaridad, status: :created, location: @escolaridad }
      else
        format.html { render action: "new" }
        format.json { render json: @escolaridad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /escolaridads/1
  # PUT /escolaridads/1.json
  def update
    @escolaridad = Escolaridad.find(params[:id])

    respond_to do |format|
      if @escolaridad.update_attributes(params[:escolaridad])
        format.html { redirect_to @escolaridad, notice: 'Escolaridad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @escolaridad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /escolaridads/1
  # DELETE /escolaridads/1.json
  def destroy
    @escolaridad = Escolaridad.find(params[:id])
    @escolaridad.destroy

    respond_to do |format|
      format.html { redirect_to escolaridads_url }
      format.json { head :no_content }
    end
  end
end
