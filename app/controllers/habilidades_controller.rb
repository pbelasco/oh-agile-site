class HabilidadesController < ApplicationController
  # GET /habilidades
  # GET /habilidades.json
  def index
    @habilidades = Habilidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @habilidades }
    end
  end

  # GET /habilidades/1
  # GET /habilidades/1.json
  def show
    @habilidade = Habilidade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @habilidade }
    end
  end

  # GET /habilidades/new
  # GET /habilidades/new.json
  def new
    @habilidade = Habilidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @habilidade }
    end
  end

  # GET /habilidades/1/edit
  def edit
    @habilidade = Habilidade.find(params[:id])
  end

  # POST /habilidades
  # POST /habilidades.json
  def create
    @habilidade = Habilidade.new(params[:habilidade])

    respond_to do |format|
      if @habilidade.save
        format.html { redirect_to @habilidade, notice: 'Habilidade was successfully created.' }
        format.json { render json: @habilidade, status: :created, location: @habilidade }
      else
        format.html { render action: "new" }
        format.json { render json: @habilidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /habilidades/1
  # PUT /habilidades/1.json
  def update
    @habilidade = Habilidade.find(params[:id])

    respond_to do |format|
      if @habilidade.update_attributes(params[:habilidade])
        format.html { redirect_to @habilidade, notice: 'Habilidade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @habilidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habilidades/1
  # DELETE /habilidades/1.json
  def destroy
    @habilidade = Habilidade.find(params[:id])
    @habilidade.destroy

    respond_to do |format|
      format.html { redirect_to habilidades_url }
      format.json { head :no_content }
    end
  end
end
