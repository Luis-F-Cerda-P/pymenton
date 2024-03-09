class ProductComponentsController < ApplicationController
  before_action :set_product_component, only: %i[ show edit update destroy ]

  # GET /product_components or /product_components.json
  def index
    @product_components = ProductComponent.all
  end

  # GET /product_components/1 or /product_components/1.json
  def show
  end

  # GET /product_components/new
  def new
    @product_component = ProductComponent.new
  end

  # GET /product_components/1/edit
  def edit
  end

  # POST /product_components or /product_components.json
  def create
    @product_component = ProductComponent.new(product_component_params)

    respond_to do |format|
      if @product_component.save
        format.html { redirect_to product_component_url(@product_component), notice: "Product component was successfully created." }
        format.json { render :show, status: :created, location: @product_component }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_components/1 or /product_components/1.json
  def update
    respond_to do |format|
      if @product_component.update(product_component_params)
        format.html { redirect_to product_component_url(@product_component), notice: "Product component was successfully updated." }
        format.json { render :show, status: :ok, location: @product_component }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_components/1 or /product_components/1.json
  def destroy
    @product_component.destroy!

    respond_to do |format|
      format.html { redirect_to product_components_url, notice: "Product component was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_component
      @product_component = ProductComponent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_component_params
      params.require(:product_component).permit(:good_id, :good_id, :date_from, :date_thru, :quantity)
    end
end
