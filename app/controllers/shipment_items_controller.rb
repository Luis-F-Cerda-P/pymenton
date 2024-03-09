class ShipmentItemsController < ApplicationController
  before_action :set_shipment_item, only: %i[ show edit update destroy ]

  # GET /shipment_items or /shipment_items.json
  def index
    @shipment_items = ShipmentItem.all
  end

  # GET /shipment_items/1 or /shipment_items/1.json
  def show
  end

  # GET /shipment_items/new
  def new
    @shipment_item = ShipmentItem.new
  end

  # GET /shipment_items/1/edit
  def edit
  end

  # POST /shipment_items or /shipment_items.json
  def create
    @shipment_item = ShipmentItem.new(shipment_item_params)

    respond_to do |format|
      if @shipment_item.save
        format.html { redirect_to shipment_item_url(@shipment_item), notice: "Shipment item was successfully created." }
        format.json { render :show, status: :created, location: @shipment_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipment_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipment_items/1 or /shipment_items/1.json
  def update
    respond_to do |format|
      if @shipment_item.update(shipment_item_params)
        format.html { redirect_to shipment_item_url(@shipment_item), notice: "Shipment item was successfully updated." }
        format.json { render :show, status: :ok, location: @shipment_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shipment_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipment_items/1 or /shipment_items/1.json
  def destroy
    @shipment_item.destroy!

    respond_to do |format|
      format.html { redirect_to shipment_items_url, notice: "Shipment item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment_item
      @shipment_item = ShipmentItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shipment_item_params
      params.require(:shipment_item).permit(:good_id, :shipment_id, :feature_applicability_id, :quantity)
    end
end
