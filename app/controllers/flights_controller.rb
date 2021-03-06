class FlightsController < ApplicationController
  before_action :set_flight, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:new]

  # GET /flights
  # GET /flights.json
  def index
    if params[:origin] != nil || params[:destination] != nil
      @flights = Flight.where("origin LIKE ? AND destination LIKE ?", params[:origin], params[:destination])
    else
      @flights = Flight.all
    end
    @users = User.all
    @flight = Flight.new
    @users = User.all
    @airplanes = Airplane.all

  end

  # GET /flights/1
  # GET /flights/1.json
  def show
  end

  # GET /flights/new
  def new
    @flight = Flight.new
  end

  # GET /flights/1/edit
  def edit
  end

  # POST /flights
  # POST /flights.json
  def create
    @flight = Flight.new(flight_params)

    @flights = Flight.all
    authorize @flight

    respond_to do |format|
      if @flight.save
        @flight.create_seats
        format.html { redirect_to flights_path, notice: 'Flight was successfully created.' }
        format.json { render action: 'show', status: :created, location: @flight }
      else
        format.html { render action: 'new' }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flights/1
  # PATCH/PUT /flights/1.json
  def update
    # authorize @flight
    respond_to do |format|
      if @flight.update(flight_params)
        format.html { redirect_to @flight, notice: 'Flight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights/1
  # DELETE /flights/1.json
  def destroy
    # authorize @flight
    @flight.destroy
    respond_to do |format|
      format.html { redirect_to flights_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight
      @flight = Flight.find(params[:id])
    end

    def set_user
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flight_params
      params.require(:flight).permit(:number, :origin, :destination, :date, :airplane_id)
    end
end
