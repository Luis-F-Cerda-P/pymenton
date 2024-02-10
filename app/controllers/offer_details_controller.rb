class OfferDetailsController < ApplicationController
  before_action :set_offer_detail, only: %i[ show edit update destroy ]

  # GET /offer_details or /offer_details.json
  def index
    @offer_details = OfferDetail.all
  end

  # GET /offer_details/1 or /offer_details/1.json
  def show
  end

  # GET /offer_details/new
  def new
    @offer_detail = OfferDetail.new
  end

  # GET /offer_details/1/edit
  def edit
  end

  # POST /offer_details or /offer_details.json
  def create
    @offer_detail = OfferDetail.new(offer_detail_params)

    respond_to do |format|
      if @offer_detail.save
        format.html { redirect_to offer_detail_url(@offer_detail), notice: "Offer detail was successfully created." }
        format.json { render :show, status: :created, location: @offer_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @offer_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offer_details/1 or /offer_details/1.json
  def update
    respond_to do |format|
      if @offer_detail.update(offer_detail_params)
        format.html { redirect_to offer_detail_url(@offer_detail), notice: "Offer detail was successfully updated." }
        format.json { render :show, status: :ok, location: @offer_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @offer_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offer_details/1 or /offer_details/1.json
  def destroy
    @offer_detail.destroy!

    respond_to do |format|
      format.html { redirect_to offer_details_url, notice: "Offer detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer_detail
      @offer_detail = OfferDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def offer_detail_params
      params.require(:offer_detail).permit(:product_id, :offer_id)
    end
end
