class TransportationOrdersController < ApplicationController
  before_action :set_transportation_order, only: %i[ show edit update destroy ]

  # GET /transportation_orders or /transportation_orders.json
  def index
    @transportation_orders = TransportationOrder.all
  end

  # GET /transportation_orders/1 or /transportation_orders/1.json
  def show
  end

  # GET /transportation_orders/new
  def new
    @transportation_order = TransportationOrder.new
  end

  # GET /transportation_orders/1/edit
  def edit
  end

  # POST /transportation_orders or /transportation_orders.json
  def create
    @transportation_order = TransportationOrder.new(transportation_order_params)

    respond_to do |format|
      if @transportation_order.save
        format.html { redirect_to transportation_order_url(@transportation_order), notice: "Transportation order was successfully created." }
        format.json { render :show, status: :created, location: @transportation_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transportation_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transportation_orders/1 or /transportation_orders/1.json
  def update
    respond_to do |format|
      if @transportation_order.update(transportation_order_params)
        format.html { redirect_to transportation_order_url(@transportation_order), notice: "Transportation order was successfully updated." }
        format.json { render :show, status: :ok, location: @transportation_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transportation_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transportation_orders/1 or /transportation_orders/1.json
  def destroy
    @transportation_order.destroy!

    respond_to do |format|
      format.html { redirect_to transportation_orders_url, notice: "Transportation order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transportation_order
      @transportation_order = TransportationOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transportation_order_params
      params.require(:transportation_order).permit(:transportation_type_id, :person_id)
    end
end
