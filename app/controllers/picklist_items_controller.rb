class PicklistItemsController < ApplicationController
  before_action :set_picklist_item, only: %i[ show edit update destroy ]

  # GET /picklist_items or /picklist_items.json
  def index
    @picklist_items = PicklistItem.all
  end

  # GET /picklist_items/1 or /picklist_items/1.json
  def show
  end

  # GET /picklist_items/new
  def new
    @picklist_item = PicklistItem.new
  end

  # GET /picklist_items/1/edit
  def edit
  end

  # POST /picklist_items or /picklist_items.json
  def create
    @picklist_item = PicklistItem.new(picklist_item_params)

    respond_to do |format|
      if @picklist_item.save
        format.html { redirect_to picklist_item_url(@picklist_item), notice: "Picklist item was successfully created." }
        format.json { render :show, status: :created, location: @picklist_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @picklist_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picklist_items/1 or /picklist_items/1.json
  def update
    respond_to do |format|
      if @picklist_item.update(picklist_item_params)
        format.html { redirect_to picklist_item_url(@picklist_item), notice: "Picklist item was successfully updated." }
        format.json { render :show, status: :ok, location: @picklist_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @picklist_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picklist_items/1 or /picklist_items/1.json
  def destroy
    @picklist_item.destroy!

    respond_to do |format|
      format.html { redirect_to picklist_items_url, notice: "Picklist item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picklist_item
      @picklist_item = PicklistItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def picklist_item_params
      params.require(:picklist_item).permit(:picklist_id, :inventory_item_id, :quantity)
    end
end
