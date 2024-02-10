class GoodsOrderTypesController < ApplicationController
  before_action :set_goods_order_type, only: %i[ show edit update destroy ]

  # GET /goods_order_types or /goods_order_types.json
  def index
    @goods_order_types = GoodsOrderType.all
  end

  # GET /goods_order_types/1 or /goods_order_types/1.json
  def show
  end

  # GET /goods_order_types/new
  def new
    @goods_order_type = GoodsOrderType.new
  end

  # GET /goods_order_types/1/edit
  def edit
  end

  # POST /goods_order_types or /goods_order_types.json
  def create
    @goods_order_type = GoodsOrderType.new(goods_order_type_params)

    respond_to do |format|
      if @goods_order_type.save
        format.html { redirect_to goods_order_type_url(@goods_order_type), notice: "Goods order type was successfully created." }
        format.json { render :show, status: :created, location: @goods_order_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @goods_order_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goods_order_types/1 or /goods_order_types/1.json
  def update
    respond_to do |format|
      if @goods_order_type.update(goods_order_type_params)
        format.html { redirect_to goods_order_type_url(@goods_order_type), notice: "Goods order type was successfully updated." }
        format.json { render :show, status: :ok, location: @goods_order_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @goods_order_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goods_order_types/1 or /goods_order_types/1.json
  def destroy
    @goods_order_type.destroy!

    respond_to do |format|
      format.html { redirect_to goods_order_types_url, notice: "Goods order type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goods_order_type
      @goods_order_type = GoodsOrderType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def goods_order_type_params
      params.require(:goods_order_type).permit(:description)
    end
end
