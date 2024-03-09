class ShipmentStatusTypesController < ApplicationController
  before_action :set_shipment_status_type, only: %i[ show edit update destroy ]

  # GET /shipment_status_types or /shipment_status_types.json
  def index
    @shipment_status_types = ShipmentStatusType.all
  end

  # GET /shipment_status_types/1 or /shipment_status_types/1.json
  def show
  end

  # GET /shipment_status_types/new
  def new
    @shipment_status_type = ShipmentStatusType.new
  end

  # GET /shipment_status_types/1/edit
  def edit
  end

  # POST /shipment_status_types or /shipment_status_types.json
  def create
    @shipment_status_type = ShipmentStatusType.new(shipment_status_type_params)

    respond_to do |format|
      if @shipment_status_type.save
        format.html { redirect_to shipment_status_type_url(@shipment_status_type), notice: "Shipment status type was successfully created." }
        format.json { render :show, status: :created, location: @shipment_status_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipment_status_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipment_status_types/1 or /shipment_status_types/1.json
  def update
    respond_to do |format|
      if @shipment_status_type.update(shipment_status_type_params)
        format.html { redirect_to shipment_status_type_url(@shipment_status_type), notice: "Shipment status type was successfully updated." }
        format.json { render :show, status: :ok, location: @shipment_status_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shipment_status_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipment_status_types/1 or /shipment_status_types/1.json
  def destroy
    @shipment_status_type.destroy!

    respond_to do |format|
      format.html { redirect_to shipment_status_types_url, notice: "Shipment status type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment_status_type
      @shipment_status_type = ShipmentStatusType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shipment_status_type_params
      params.require(:shipment_status_type).permit(:description)
    end
end
