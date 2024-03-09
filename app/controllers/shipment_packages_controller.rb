class ShipmentPackagesController < ApplicationController
  before_action :set_shipment_package, only: %i[ show edit update destroy ]

  # GET /shipment_packages or /shipment_packages.json
  def index
    @shipment_packages = ShipmentPackage.all
  end

  # GET /shipment_packages/1 or /shipment_packages/1.json
  def show
  end

  # GET /shipment_packages/new
  def new
    @shipment_package = ShipmentPackage.new
  end

  # GET /shipment_packages/1/edit
  def edit
  end

  # POST /shipment_packages or /shipment_packages.json
  def create
    @shipment_package = ShipmentPackage.new(shipment_package_params)

    respond_to do |format|
      if @shipment_package.save
        format.html { redirect_to shipment_package_url(@shipment_package), notice: "Shipment package was successfully created." }
        format.json { render :show, status: :created, location: @shipment_package }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipment_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipment_packages/1 or /shipment_packages/1.json
  def update
    respond_to do |format|
      if @shipment_package.update(shipment_package_params)
        format.html { redirect_to shipment_package_url(@shipment_package), notice: "Shipment package was successfully updated." }
        format.json { render :show, status: :ok, location: @shipment_package }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shipment_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipment_packages/1 or /shipment_packages/1.json
  def destroy
    @shipment_package.destroy!

    respond_to do |format|
      format.html { redirect_to shipment_packages_url, notice: "Shipment package was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment_package
      @shipment_package = ShipmentPackage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shipment_package_params
      params.require(:shipment_package).permit(:shipment_id)
    end
end
