class ItemIssuancesController < ApplicationController
  before_action :set_item_issuance, only: %i[ show edit update destroy ]

  # GET /item_issuances or /item_issuances.json
  def index
    @item_issuances = ItemIssuance.all
  end

  # GET /item_issuances/1 or /item_issuances/1.json
  def show
  end

  # GET /item_issuances/new
  def new
    @item_issuance = ItemIssuance.new
  end

  # GET /item_issuances/1/edit
  def edit
  end

  # POST /item_issuances or /item_issuances.json
  def create
    @item_issuance = ItemIssuance.new(item_issuance_params)

    respond_to do |format|
      if @item_issuance.save
        format.html { redirect_to item_issuance_url(@item_issuance), notice: "Item issuance was successfully created." }
        format.json { render :show, status: :created, location: @item_issuance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item_issuance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_issuances/1 or /item_issuances/1.json
  def update
    respond_to do |format|
      if @item_issuance.update(item_issuance_params)
        format.html { redirect_to item_issuance_url(@item_issuance), notice: "Item issuance was successfully updated." }
        format.json { render :show, status: :ok, location: @item_issuance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item_issuance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_issuances/1 or /item_issuances/1.json
  def destroy
    @item_issuance.destroy!

    respond_to do |format|
      format.html { redirect_to item_issuances_url, notice: "Item issuance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_issuance
      @item_issuance = ItemIssuance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_issuance_params
      params.require(:item_issuance).permit(:picklist_item_id, :shipment_item_id, :inventory_item_id, :quantity)
    end
end
