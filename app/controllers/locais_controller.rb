class LocaisController < ApplicationController
  # GET /locais
  # GET /locais.json
  def index
    @locais = Local.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locais }
    end
  end

  # GET /locais/1
  # GET /locais/1.json
  def show
    @local = Local.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @local }
    end
  end

  # GET /locais/new
  # GET /locais/new.json
  def new
    @local = Local.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @local }
    end
  end

  # GET /locais/1/edit
  def edit
    @local = Local.find(params[:id])
  end

  # POST /locais
  # POST /locais.json
  def create
    @local = Local.new(params[:local])

    respond_to do |format|
      if @local.save
        format.html { redirect_to @local, notice: 'Local was successfully created.' }
        format.json { render json: @local, status: :created, location: @local }
      else
        format.html { render action: "new" }
        format.json { render json: @local.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /locais/1
  # PUT /locais/1.json
  def update
    @local = Local.find(params[:id])

    respond_to do |format|
      if @local.update_attributes(params[:local])
        format.html { redirect_to @local, notice: 'Local was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @local.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locais/1
  # DELETE /locais/1.json
  def destroy
    @local = Local.find(params[:id])
    @local.destroy

    respond_to do |format|
      format.html { redirect_to locais_url }
      format.json { head :no_content }
    end
  end
end
