class GoodsOrdersController < ApplicationController
  before_action :set_goods_order, only: %i[ show edit update destroy ]

  # GET /goods_orders or /goods_orders.json
  def index
    @goods_orders = GoodsOrder.all
  end

  # GET /goods_orders/1 or /goods_orders/1.json
  def show
  end

  # GET /goods_orders/new
  def new
    @goods_order = GoodsOrder.new
  end

  # GET /goods_orders/1/edit
  def edit
  end

  # POST /goods_orders or /goods_orders.json
  def create
    @goods_order = GoodsOrder.new(goods_order_params)

    respond_to do |format|
      if @goods_order.save
        format.html { redirect_to goods_order_url(@goods_order), notice: "Goods order was successfully created." }
        format.json { render :show, status: :created, location: @goods_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @goods_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goods_orders/1 or /goods_orders/1.json
  def update
    respond_to do |format|
      if @goods_order.update(goods_order_params)
        format.html { redirect_to goods_order_url(@goods_order), notice: "Goods order was successfully updated." }
        format.json { render :show, status: :ok, location: @goods_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @goods_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goods_orders/1 or /goods_orders/1.json
  def destroy
    @goods_order.destroy!

    respond_to do |format|
      format.html { redirect_to goods_orders_url, notice: "Goods order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goods_order
      @goods_order = GoodsOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def goods_order_params
      params.require(:goods_order).permit(:contact_channel_id, :goods_order_type_id, :transportation_order_id)
    end
end
