class GoodIdentificationsController < ApplicationController
  before_action :set_good_identification, only: %i[ show edit update destroy ]

  # GET /good_identifications or /good_identifications.json
  def index
    @good_identifications = GoodIdentification.all
  end

  # GET /good_identifications/1 or /good_identifications/1.json
  def show
  end

  # GET /good_identifications/new
  def new
    @good_identification = GoodIdentification.new
  end

  # GET /good_identifications/1/edit
  def edit
  end

  # POST /good_identifications or /good_identifications.json
  def create
    @good_identification = GoodIdentification.new(good_identification_params)

    respond_to do |format|
      if @good_identification.save
        format.html { redirect_to good_identification_url(@good_identification), notice: "Good identification was successfully created." }
        format.json { render :show, status: :created, location: @good_identification }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @good_identification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /good_identifications/1 or /good_identifications/1.json
  def update
    respond_to do |format|
      if @good_identification.update(good_identification_params)
        format.html { redirect_to good_identification_url(@good_identification), notice: "Good identification was successfully updated." }
        format.json { render :show, status: :ok, location: @good_identification }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @good_identification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /good_identifications/1 or /good_identifications/1.json
  def destroy
    @good_identification.destroy!

    respond_to do |format|
      format.html { redirect_to good_identifications_url, notice: "Good identification was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_good_identification
      @good_identification = GoodIdentification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def good_identification_params
      params.require(:good_identification).permit(:good_id, :identification_id)
    end
end
