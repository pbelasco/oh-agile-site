class ViagensController < ApplicationController
  # GET /viagens
  # GET /viagens.json
  def index
    @viagens = Viagem.all 

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @viagens }
    end
  end

  # GET /viagens/1
  # GET /viagens/1.json
  def show
    @viagem = Viagem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @viagem }
    end
  end

  # GET /viagens/new
  # GET /viagens/new.json
  def new
    @viagem = Viagem.new 

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @viagem }
    end
  end

  # GET /viagens/1/edit
  def edit
    @viagem = Viagem.find(params[:id])
  end

  # POST /viagens
  # POST /viagens.json
  def create
    @viagem = Viagem.new params[:viagem], :except => [:data_saida, :data_retorno]
    @viagem.data_saida = Date.strptime(params[:viagem][:data_saida], '%d/%m/%Y')
    @viagem.data_retorno = Date.strptime(params[:viagem][:data_retorno], '%d/%m/%Y')

    respond_to do |format|
      if @viagem.save
        format.html { redirect_to @viagem, notice: 'Viagem was successfully created.' }
        format.json { render json: @viagem, status: :created, location: @viagem }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @viagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /viagens/1
  # PUT /viagens/1.json
  def update
    @viagem = Viagem.find params[:id], :except => [:data_saida, :data_retorno]
    @viagem.data_saida = Date.strptime(params[:viagem][:data_saida], '%d/%m/%Y')
    @viagem.data_retorno = Date.strptime(params[:viagem][:data_retorno], '%d/%m/%Y')

    respond_to do |format|
      if @viagem.update_attributes(params[:viagem])
        format.html { redirect_to @viagem, notice: 'Viagem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @viagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viagens/1
  # DELETE /viagens/1.json
  def destroy
    @viagem = Viagem.find(params[:id])
    @viagem.destroy

    respond_to do |format|
      format.html { redirect_to viagens_url }
      format.json { head :no_content }
    end
  end
end
