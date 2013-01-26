class EtniasController < ApplicationController
  # GET /etnias
  # GET /etnias.json
  def index
    @etnias = Etnia.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @etnias }
    end
  end

  # GET /etnias/1
  # GET /etnias/1.json
  def show
    @etnia = Etnia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @etnia }
    end
  end

  # GET /etnias/new
  # GET /etnias/new.json
  def new
    @etnia = Etnia.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @etnia }
    end
  end

  # GET /etnias/1/edit
  def edit
    @etnia = Etnia.find(params[:id])
  end

  # POST /etnias
  # POST /etnias.json
  def create
    @etnia = Etnia.new(params[:etnia])

    respond_to do |format|
      if @etnia.save
        format.html { redirect_to @etnia, notice: 'Etnia was successfully created.' }
        format.json { render json: @etnia, status: :created, location: @etnia }
      else
        format.html { render action: "new" }
        format.json { render json: @etnia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /etnias/1
  # PUT /etnias/1.json
  def update
    @etnia = Etnia.find(params[:id])

    respond_to do |format|
      if @etnia.update_attributes(params[:etnia])
        format.html { redirect_to @etnia, notice: 'Etnia was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @etnia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etnias/1
  # DELETE /etnias/1.json
  def destroy
    @etnia = Etnia.find(params[:id])
    @etnia.destroy

    respond_to do |format|
      format.html { redirect_to etnias_url }
      format.json { head :no_content }
    end
  end
end
