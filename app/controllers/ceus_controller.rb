class CeusController < ApplicationController
  before_action :set_ceu, only: [:show, :edit, :update, :destroy]

  # GET /ceus
  # GET /ceus.json
  def index
    @ceus = Ceu.all

    render json: @ceus.to_json(include: [:clients, :usstates])
  end

  # GET /ceus/1
  # GET /ceus/1.json
  def show
    render json: @ceu.to_json(include: [:clients, :usstates])
  end

  # GET /ceus/new
  def new
    @ceu = Ceu.new
  end

  # GET /ceus/1/edit
  def edit
  end

  # POST /ceus
  # POST /ceus.json
  def create
    @ceu = Ceu.new(ceu_params)

    respond_to do |format|
      if @ceu.save
        format.html { redirect_to @ceu, notice: 'Ceu was successfully created.' }
        format.json { render :show, status: :created, location: @ceu }
      else
        format.html { render :new }
        format.json { render json: @ceu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ceus/1
  # PATCH/PUT /ceus/1.json
  def update
    respond_to do |format|
      if @ceu.update(ceu_params)
        format.html { redirect_to @ceu, notice: 'Ceu was successfully updated.' }
        format.json { render :show, status: :ok, location: @ceu }
      else
        format.html { render :edit }
        format.json { render json: @ceu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ceus/1
  # DELETE /ceus/1.json
  def destroy
    @ceu.destroy
    respond_to do |format|
      format.html { redirect_to ceus_url, notice: 'Ceu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ceu
      @ceu = Ceu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ceu_params
      params.require(:ceu).permit(:title, :number, :hours, :state, :instructor_name, :provider_name)
    end
end
