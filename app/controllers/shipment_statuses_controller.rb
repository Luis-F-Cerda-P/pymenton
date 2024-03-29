class ShipmentStatusesController < ApplicationController
  before_action :set_shipment_status, only: %i[ show edit update destroy ]

  # GET /shipment_statuses or /shipment_statuses.json
  def index
    @shipment_statuses = ShipmentStatus.all
  end

  # GET /shipment_statuses/1 or /shipment_statuses/1.json
  def show
  end

  # GET /shipment_statuses/new
  def new
    @shipment_status = ShipmentStatus.new
  end

  # GET /shipment_statuses/1/edit
  def edit
  end

  # POST /shipment_statuses or /shipment_statuses.json
  def create
    @shipment_status = ShipmentStatus.new(shipment_status_params)

    respond_to do |format|
      if @shipment_status.save
        format.html { redirect_to shipment_status_url(@shipment_status), notice: "Shipment status was successfully created." }
        format.json { render :show, status: :created, location: @shipment_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipment_statuses/1 or /shipment_statuses/1.json
  def update
    respond_to do |format|
      if @shipment_status.update(shipment_status_params)
        format.html { redirect_to shipment_status_url(@shipment_status), notice: "Shipment status was successfully updated." }
        format.json { render :show, status: :ok, location: @shipment_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shipment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipment_statuses/1 or /shipment_statuses/1.json
  def destroy
    @shipment_status.destroy!

    respond_to do |format|
      format.html { redirect_to shipment_statuses_url, notice: "Shipment status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment_status
      @shipment_status = ShipmentStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shipment_status_params
      params.require(:shipment_status).permit(:shipment_id, :shipment_status_type_id)
    end
end
