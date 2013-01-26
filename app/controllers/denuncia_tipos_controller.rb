class DenunciaTiposController < ApplicationController
  # GET /denuncia_tipos
  # GET /denuncia_tipos.json
  def index
    @denuncia_tipos = DenunciaTipo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @denuncia_tipos }
    end
  end

  # GET /denuncia_tipos/1
  # GET /denuncia_tipos/1.json
  def show
    @denuncia_tipo = DenunciaTipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @denuncia_tipo }
    end
  end

  # GET /denuncia_tipos/new
  # GET /denuncia_tipos/new.json
  def new
    @denuncia_tipo = DenunciaTipo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @denuncia_tipo }
    end
  end

  # GET /denuncia_tipos/1/edit
  def edit
    @denuncia_tipo = DenunciaTipo.find(params[:id])
  end

  # POST /denuncia_tipos
  # POST /denuncia_tipos.json
  def create
    @denuncia_tipo = DenunciaTipo.new(params[:denuncia_tipo])

    respond_to do |format|
      if @denuncia_tipo.save
        format.html { redirect_to @denuncia_tipo, notice: 'Denuncia tipo was successfully created.' }
        format.json { render json: @denuncia_tipo, status: :created, location: @denuncia_tipo }
      else
        format.html { render action: "new" }
        format.json { render json: @denuncia_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /denuncia_tipos/1
  # PUT /denuncia_tipos/1.json
  def update
    @denuncia_tipo = DenunciaTipo.find(params[:id])

    respond_to do |format|
      if @denuncia_tipo.update_attributes(params[:denuncia_tipo])
        format.html { redirect_to @denuncia_tipo, notice: 'Denuncia tipo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @denuncia_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /denuncia_tipos/1
  # DELETE /denuncia_tipos/1.json
  def destroy
    @denuncia_tipo = DenunciaTipo.find(params[:id])
    @denuncia_tipo.destroy

    respond_to do |format|
      format.html { redirect_to denuncia_tipos_url }
      format.json { head :no_content }
    end
  end
end
