class UsstatesController < ApplicationController
  before_action :set_usstate, only: [:show, :edit, :update, :destroy]

  # GET /usstates
  # GET /usstates.json
  def index
    @usstates = Usstate.all

    # render json: @usstates.to_json(include: [:ceus, :clients])
  end

  # GET /usstates/1
  # GET /usstates/1.json
  def show
    render json: @usstates.to_json(include: [:ceus, :clients])
  end

  # GET /usstates/new
  def new
    @usstate = Usstate.new
  end

  # GET /usstates/1/edit
  def edit
  end

  # POST /usstates
  # POST /usstates.json
  def create
    @usstate = Usstate.new(usstate_params)

    respond_to do |format|
      if @usstate.save
        format.html { redirect_to @usstate, notice: 'Usstate was successfully created.' }
        format.json { render :show, status: :created, location: @usstate }
      else
        format.html { render :new }
        format.json { render json: @usstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usstates/1
  # PATCH/PUT /usstates/1.json
  def update
    respond_to do |format|
      if @usstate.update(usstate_params)
        format.html { redirect_to @usstate, notice: 'Usstate was successfully updated.' }
        format.json { render :show, status: :ok, location: @usstate }
      else
        format.html { render :edit }
        format.json { render json: @usstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usstates/1
  # DELETE /usstates/1.json
  def destroy
    @usstate.destroy
    respond_to do |format|
      format.html { redirect_to usstates_url, notice: 'Usstate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usstate
      @usstate = Usstate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def usstate_params
      params.require(:usstate).permit(:name, :hours, :periodicity, :conditions, :link)
    end
end
