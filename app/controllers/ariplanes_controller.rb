class AriplanesController < ApplicationController
  before_action :set_ariplane, only: [:show, :edit, :update, :destroy]

  # GET /ariplanes
  # GET /ariplanes.json
  def index
    @ariplanes = Ariplane.all
  end

  # GET /ariplanes/1
  # GET /ariplanes/1.json
  def show
  end

  # GET /ariplanes/new
  def new
    @ariplane = Ariplane.new
  end

  # GET /ariplanes/1/edit
  def edit
  end

  # POST /ariplanes
  # POST /ariplanes.json
  def create
    @ariplane = Ariplane.new(ariplane_params)

    respond_to do |format|
      if @ariplane.save
        format.html { redirect_to @ariplane, notice: 'Ariplane was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ariplane }
      else
        format.html { render action: 'new' }
        format.json { render json: @ariplane.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ariplanes/1
  # PATCH/PUT /ariplanes/1.json
  def update
    respond_to do |format|
      if @ariplane.update(ariplane_params)
        format.html { redirect_to @ariplane, notice: 'Ariplane was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ariplane.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ariplanes/1
  # DELETE /ariplanes/1.json
  def destroy
    @ariplane.destroy
    respond_to do |format|
      format.html { redirect_to ariplanes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ariplane
      @ariplane = Ariplane.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ariplane_params
      params.require(:ariplane).permit(:name, :rows, :columns)
    end
end
