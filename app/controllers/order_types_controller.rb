class OrderTypesController < ApplicationController
  before_action :set_order_type, only: %i[ show edit update destroy ]

  # GET /order_types or /order_types.json
  def index
    @order_types = OrderType.all
  end

  # GET /order_types/1 or /order_types/1.json
  def show
  end

  # GET /order_types/new
  def new
    @order_type = OrderType.new
  end

  # GET /order_types/1/edit
  def edit
  end

  # POST /order_types or /order_types.json
  def create
    @order_type = OrderType.new(order_type_params)

    respond_to do |format|
      if @order_type.save
        format.html { redirect_to order_type_url(@order_type), notice: "Order type was successfully created." }
        format.json { render :show, status: :created, location: @order_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_types/1 or /order_types/1.json
  def update
    respond_to do |format|
      if @order_type.update(order_type_params)
        format.html { redirect_to order_type_url(@order_type), notice: "Order type was successfully updated." }
        format.json { render :show, status: :ok, location: @order_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_types/1 or /order_types/1.json
  def destroy
    @order_type.destroy!

    respond_to do |format|
      format.html { redirect_to order_types_url, notice: "Order type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_type
      @order_type = OrderType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_type_params
      params.require(:order_type).permit(:description)
    end
end
