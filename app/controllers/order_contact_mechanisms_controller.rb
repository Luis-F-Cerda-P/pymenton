class OrderContactMechanismsController < ApplicationController
  before_action :set_order_contact_mechanism, only: %i[ show edit update destroy ]

  # GET /order_contact_mechanisms or /order_contact_mechanisms.json
  def index
    @order_contact_mechanisms = OrderContactMechanism.all
  end

  # GET /order_contact_mechanisms/1 or /order_contact_mechanisms/1.json
  def show
  end

  # GET /order_contact_mechanisms/new
  def new
    @order_contact_mechanism = OrderContactMechanism.new
  end

  # GET /order_contact_mechanisms/1/edit
  def edit
  end

  # POST /order_contact_mechanisms or /order_contact_mechanisms.json
  def create
    @order_contact_mechanism = OrderContactMechanism.new(order_contact_mechanism_params)

    respond_to do |format|
      if @order_contact_mechanism.save
        format.html { redirect_to order_contact_mechanism_url(@order_contact_mechanism), notice: "Order contact mechanism was successfully created." }
        format.json { render :show, status: :created, location: @order_contact_mechanism }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order_contact_mechanism.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_contact_mechanisms/1 or /order_contact_mechanisms/1.json
  def update
    respond_to do |format|
      if @order_contact_mechanism.update(order_contact_mechanism_params)
        format.html { redirect_to order_contact_mechanism_url(@order_contact_mechanism), notice: "Order contact mechanism was successfully updated." }
        format.json { render :show, status: :ok, location: @order_contact_mechanism }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order_contact_mechanism.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_contact_mechanisms/1 or /order_contact_mechanisms/1.json
  def destroy
    @order_contact_mechanism.destroy!

    respond_to do |format|
      format.html { redirect_to order_contact_mechanisms_url, notice: "Order contact mechanism was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_contact_mechanism
      @order_contact_mechanism = OrderContactMechanism.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_contact_mechanism_params
      params.require(:order_contact_mechanism).permit(:order_id, :contact_mechanism_id)
    end
end
