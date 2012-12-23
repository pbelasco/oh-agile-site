class TripulantesController < ApplicationController
  # GET /tripulantes
  # GET /tripulantes.json
  def index
    @tripulantes = Tripulante.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tripulantes }
    end
  end

  # GET /tripulantes/1
  # GET /tripulantes/1.json
  def show
    @tripulante = Tripulante.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tripulante }
    end
  end

  # GET /tripulantes/new
  # GET /tripulantes/new.json
  def new
    @tripulante = Tripulante.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tripulante }
    end
  end

  # GET /tripulantes/1/edit
  def edit
    @tripulante = Tripulante.find(params[:id])
  end

  # POST /tripulantes
  # POST /tripulantes.json
  def create
    @tripulante = Tripulante.new(params[:tripulante])

    respond_to do |format|
      if @tripulante.save
        format.html { redirect_to @tripulante, notice: 'Tripulante was successfully created.' }
        format.json { render json: @tripulante, status: :created, location: @tripulante }
      else
        format.html { render action: "new" }
        format.json { render json: @tripulante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tripulantes/1
  # PUT /tripulantes/1.json
  def update
    @tripulante = Tripulante.find(params[:id])

    respond_to do |format|
      if @tripulante.update_attributes(params[:tripulante])
        format.html { redirect_to @tripulante, notice: 'Tripulante was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tripulante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tripulantes/1
  # DELETE /tripulantes/1.json
  def destroy
    @tripulante = Tripulante.find(params[:id])
    @tripulante.destroy

    respond_to do |format|
      format.html { redirect_to tripulantes_url }
      format.json { head :no_content }
    end
  end
end
