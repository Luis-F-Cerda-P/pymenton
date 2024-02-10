class GoodsOrderDetailsController < ApplicationController
  before_action :set_goods_order_detail, only: %i[ show edit update destroy ]

  # GET /goods_order_details or /goods_order_details.json
  def index
    @goods_order_details = GoodsOrderDetail.all
  end

  # GET /goods_order_details/1 or /goods_order_details/1.json
  def show
  end

  # GET /goods_order_details/new
  def new
    @goods_order_detail = GoodsOrderDetail.new
  end

  # GET /goods_order_details/1/edit
  def edit
  end

  # POST /goods_order_details or /goods_order_details.json
  def create
    @goods_order_detail = GoodsOrderDetail.new(goods_order_detail_params)

    respond_to do |format|
      if @goods_order_detail.save
        format.html { redirect_to goods_order_detail_url(@goods_order_detail), notice: "Goods order detail was successfully created." }
        format.json { render :show, status: :created, location: @goods_order_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @goods_order_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goods_order_details/1 or /goods_order_details/1.json
  def update
    respond_to do |format|
      if @goods_order_detail.update(goods_order_detail_params)
        format.html { redirect_to goods_order_detail_url(@goods_order_detail), notice: "Goods order detail was successfully updated." }
        format.json { render :show, status: :ok, location: @goods_order_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @goods_order_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goods_order_details/1 or /goods_order_details/1.json
  def destroy
    @goods_order_detail.destroy!

    respond_to do |format|
      format.html { redirect_to goods_order_details_url, notice: "Goods order detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goods_order_detail
      @goods_order_detail = GoodsOrderDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def goods_order_detail_params
      params.require(:goods_order_detail).permit(:quantity, :price)
    end
end
