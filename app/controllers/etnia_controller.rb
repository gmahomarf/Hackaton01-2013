class EtniaController < ApplicationController
  # GET /etnia
  # GET /etnia.json
  def index
    @etnia = Etnia.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @etnia }
    end
  end

  # GET /etnia/1
  # GET /etnia/1.json
  def show
    @etnium = Etnia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @etnium }
    end
  end

  # GET /etnia/new
  # GET /etnia/new.json
  def new
    @etnium = Etnia.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @etnium }
    end
  end

  # GET /etnia/1/edit
  def edit
    @etnium = Etnia.find(params[:id])
  end

  # POST /etnia
  # POST /etnia.json
  def create
    @etnium = Etnia.new(params[:etnium])

    respond_to do |format|
      if @etnium.save
        format.html { redirect_to @etnium, notice: 'Etnia was successfully created.' }
        format.json { render json: @etnium, status: :created, location: @etnium }
      else
        format.html { render action: "new" }
        format.json { render json: @etnium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /etnia/1
  # PUT /etnia/1.json
  def update
    @etnium = Etnia.find(params[:id])

    respond_to do |format|
      if @etnium.update_attributes(params[:etnium])
        format.html { redirect_to @etnium, notice: 'Etnia was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @etnium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etnia/1
  # DELETE /etnia/1.json
  def destroy
    @etnium = Etnia.find(params[:id])
    @etnium.destroy

    respond_to do |format|
      format.html { redirect_to etnia_index_url }
      format.json { head :no_content }
    end
  end
end
