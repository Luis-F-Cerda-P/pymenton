class OrderItemShipmentItemsController < ApplicationController
  before_action :set_order_item_shipment_item, only: %i[ show edit update destroy ]

  # GET /order_item_shipment_items or /order_item_shipment_items.json
  def index
    @order_item_shipment_items = OrderItemShipmentItem.all
  end

  # GET /order_item_shipment_items/1 or /order_item_shipment_items/1.json
  def show
  end

  # GET /order_item_shipment_items/new
  def new
    @order_item_shipment_item = OrderItemShipmentItem.new
  end

  # GET /order_item_shipment_items/1/edit
  def edit
  end

  # POST /order_item_shipment_items or /order_item_shipment_items.json
  def create
    @order_item_shipment_item = OrderItemShipmentItem.new(order_item_shipment_item_params)

    respond_to do |format|
      if @order_item_shipment_item.save
        format.html { redirect_to order_item_shipment_item_url(@order_item_shipment_item), notice: "Order item shipment item was successfully created." }
        format.json { render :show, status: :created, location: @order_item_shipment_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order_item_shipment_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_item_shipment_items/1 or /order_item_shipment_items/1.json
  def update
    respond_to do |format|
      if @order_item_shipment_item.update(order_item_shipment_item_params)
        format.html { redirect_to order_item_shipment_item_url(@order_item_shipment_item), notice: "Order item shipment item was successfully updated." }
        format.json { render :show, status: :ok, location: @order_item_shipment_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order_item_shipment_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_item_shipment_items/1 or /order_item_shipment_items/1.json
  def destroy
    @order_item_shipment_item.destroy!

    respond_to do |format|
      format.html { redirect_to order_item_shipment_items_url, notice: "Order item shipment item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_item_shipment_item
      @order_item_shipment_item = OrderItemShipmentItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_item_shipment_item_params
      params.require(:order_item_shipment_item).permit(:shipment_item_id, :order_item_id, :quantity)
    end
end
