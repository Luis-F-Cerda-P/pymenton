class ShipmentReceiptsController < ApplicationController
  before_action :set_shipment_receipt, only: %i[ show edit update destroy ]

  # GET /shipment_receipts or /shipment_receipts.json
  def index
    @shipment_receipts = ShipmentReceipt.all
  end

  # GET /shipment_receipts/1 or /shipment_receipts/1.json
  def show
  end

  # GET /shipment_receipts/new
  def new
    @shipment_receipt = ShipmentReceipt.new
  end

  # GET /shipment_receipts/1/edit
  def edit
  end

  # POST /shipment_receipts or /shipment_receipts.json
  def create
    @shipment_receipt = ShipmentReceipt.new(shipment_receipt_params)

    respond_to do |format|
      if @shipment_receipt.save
        format.html { redirect_to shipment_receipt_url(@shipment_receipt), notice: "Shipment receipt was successfully created." }
        format.json { render :show, status: :created, location: @shipment_receipt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipment_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipment_receipts/1 or /shipment_receipts/1.json
  def update
    respond_to do |format|
      if @shipment_receipt.update(shipment_receipt_params)
        format.html { redirect_to shipment_receipt_url(@shipment_receipt), notice: "Shipment receipt was successfully updated." }
        format.json { render :show, status: :ok, location: @shipment_receipt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shipment_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipment_receipts/1 or /shipment_receipts/1.json
  def destroy
    @shipment_receipt.destroy!

    respond_to do |format|
      format.html { redirect_to shipment_receipts_url, notice: "Shipment receipt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment_receipt
      @shipment_receipt = ShipmentReceipt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shipment_receipt_params
      params.require(:shipment_receipt).permit(:order_item_id, :inventory_item_id, :shipment_id, :shipment_package_id, :quantity_accepted)
    end
end
