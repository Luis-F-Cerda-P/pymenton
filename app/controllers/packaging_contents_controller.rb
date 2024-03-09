class PackagingContentsController < ApplicationController
  before_action :set_packaging_content, only: %i[ show edit update destroy ]

  # GET /packaging_contents or /packaging_contents.json
  def index
    @packaging_contents = PackagingContent.all
  end

  # GET /packaging_contents/1 or /packaging_contents/1.json
  def show
  end

  # GET /packaging_contents/new
  def new
    @packaging_content = PackagingContent.new
  end

  # GET /packaging_contents/1/edit
  def edit
  end

  # POST /packaging_contents or /packaging_contents.json
  def create
    @packaging_content = PackagingContent.new(packaging_content_params)

    respond_to do |format|
      if @packaging_content.save
        format.html { redirect_to packaging_content_url(@packaging_content), notice: "Packaging content was successfully created." }
        format.json { render :show, status: :created, location: @packaging_content }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @packaging_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /packaging_contents/1 or /packaging_contents/1.json
  def update
    respond_to do |format|
      if @packaging_content.update(packaging_content_params)
        format.html { redirect_to packaging_content_url(@packaging_content), notice: "Packaging content was successfully updated." }
        format.json { render :show, status: :ok, location: @packaging_content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @packaging_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /packaging_contents/1 or /packaging_contents/1.json
  def destroy
    @packaging_content.destroy!

    respond_to do |format|
      format.html { redirect_to packaging_contents_url, notice: "Packaging content was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_packaging_content
      @packaging_content = PackagingContent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def packaging_content_params
      params.require(:packaging_content).permit(:shipment_item_id, :shipment_package_id, :quantity)
    end
end
