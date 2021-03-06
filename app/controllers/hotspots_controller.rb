  class HotspotsController < ApplicationController
  before_action :set_hotspot, only: [:show, :edit, :update, :destroy]

  # GET /hotspots
  # GET /hotspots.json
  def index
    @hotspots = Hotspot.all
  end

  # GET /hotspots/1
  # GET /hotspots/1.json
  def show
  end

  # GET /hotspots/new
  def new
    @hotspot = Hotspot.new
    @categories = Category.all
  end

  # GET /hotspots/1/edit
  def edit
    @categories = Category.all
  end

  # POST /hotspots
  # POST /hotspots.json
  def create
    @hotspot = Hotspot.new(hotspot_params)

    respond_to do |format|
      if @hotspot.save
        format.html { redirect_to @hotspot, notice: 'Hotspot was successfully created.' }
        format.json { render :show, status: :created, location: @hotspot }
      else
        format.html { render :new }
        format.json { render json: @hotspot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotspots/1
  # PATCH/PUT /hotspots/1.json
  def update
    respond_to do |format|
      if @hotspot.update(hotspot_params)
        format.html { redirect_to @hotspot, notice: 'Hotspot was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotspot }
      else
        format.html { render :edit }
        format.json { render json: @hotspot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotspots/1
  # DELETE /hotspots/1.json
  def destroy
    @hotspot.destroy
    respond_to do |format|
      format.html { redirect_to hotspots_url, notice: 'Hotspot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotspot
      @hotspot = Hotspot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hotspot_params
      params.require(:hotspot).permit(:name, :city, :state, :address, :longitude, :latitude, :category_id)
    end
end
