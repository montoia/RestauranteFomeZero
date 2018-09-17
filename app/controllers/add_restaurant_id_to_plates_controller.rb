class AddRestaurantIdToPlatesController < ApplicationController
  before_action :set_add_restaurant_id_to_plate, only: [:show, :edit, :update, :destroy]

  # GET /add_restaurant_id_to_plates
  # GET /add_restaurant_id_to_plates.json
  def index
    @add_restaurant_id_to_plates = AddRestaurantIdToPlate.all
  end

  # GET /add_restaurant_id_to_plates/1
  # GET /add_restaurant_id_to_plates/1.json
  def show
  end

  # GET /add_restaurant_id_to_plates/new
  def new
    @add_restaurant_id_to_plate = AddRestaurantIdToPlate.new
  end

  # GET /add_restaurant_id_to_plates/1/edit
  def edit
  end

  # POST /add_restaurant_id_to_plates
  # POST /add_restaurant_id_to_plates.json
  def create
    @add_restaurant_id_to_plate = AddRestaurantIdToPlate.new(add_restaurant_id_to_plate_params)

    respond_to do |format|
      if @add_restaurant_id_to_plate.save
        format.html { redirect_to @add_restaurant_id_to_plate, notice: 'Add restaurant id to plate was successfully created.' }
        format.json { render :show, status: :created, location: @add_restaurant_id_to_plate }
      else
        format.html { render :new }
        format.json { render json: @add_restaurant_id_to_plate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_restaurant_id_to_plates/1
  # PATCH/PUT /add_restaurant_id_to_plates/1.json
  def update
    respond_to do |format|
      if @add_restaurant_id_to_plate.update(add_restaurant_id_to_plate_params)
        format.html { redirect_to @add_restaurant_id_to_plate, notice: 'Add restaurant id to plate was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_restaurant_id_to_plate }
      else
        format.html { render :edit }
        format.json { render json: @add_restaurant_id_to_plate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_restaurant_id_to_plates/1
  # DELETE /add_restaurant_id_to_plates/1.json
  def destroy
    @add_restaurant_id_to_plate.destroy
    respond_to do |format|
      format.html { redirect_to add_restaurant_id_to_plates_url, notice: 'Add restaurant id to plate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_restaurant_id_to_plate
      @add_restaurant_id_to_plate = AddRestaurantIdToPlate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_restaurant_id_to_plate_params
      params.require(:add_restaurant_id_to_plate).permit(:restaurant_id)
    end
end
