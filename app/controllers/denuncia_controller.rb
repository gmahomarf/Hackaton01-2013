class DenunciaController < ApplicationController
  # GET /denuncia
  # GET /denuncia.json
  def index
    @denuncia = Denuncium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @denuncia }
    end
  end

  # GET /denuncia/1
  # GET /denuncia/1.json
  def show
    @denuncium = Denuncium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @denuncium }
    end
  end

  # GET /denuncia/new
  # GET /denuncia/new.json
  def new
    @denuncium = Denuncium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @denuncium }
    end
  end

  # GET /denuncia/1/edit
  def edit
    @denuncium = Denuncium.find(params[:id])
  end

  # POST /denuncia
  # POST /denuncia.json
  def create
    @denuncium = Denuncium.new(params[:denuncium])

    respond_to do |format|
      if @denuncium.save
        format.html { redirect_to @denuncium, notice: 'Denuncium was successfully created.' }
        format.json { render json: @denuncium, status: :created, location: @denuncium }
      else
        format.html { render action: "new" }
        format.json { render json: @denuncium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /denuncia/1
  # PUT /denuncia/1.json
  def update
    @denuncium = Denuncium.find(params[:id])

    respond_to do |format|
      if @denuncium.update_attributes(params[:denuncium])
        format.html { redirect_to @denuncium, notice: 'Denuncium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @denuncium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /denuncia/1
  # DELETE /denuncia/1.json
  def destroy
    @denuncium = Denuncium.find(params[:id])
    @denuncium.destroy

    respond_to do |format|
      format.html { redirect_to denuncia_url }
      format.json { head :no_content }
    end
  end
end
