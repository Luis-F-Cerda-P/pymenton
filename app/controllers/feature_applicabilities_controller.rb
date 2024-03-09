class FeatureApplicabilitiesController < ApplicationController
  before_action :set_feature_applicability, only: %i[ show edit update destroy ]

  # GET /feature_applicabilities or /feature_applicabilities.json
  def index
    @feature_applicabilities = FeatureApplicability.all
  end

  # GET /feature_applicabilities/1 or /feature_applicabilities/1.json
  def show
  end

  # GET /feature_applicabilities/new
  def new
    @feature_applicability = FeatureApplicability.new
  end

  # GET /feature_applicabilities/1/edit
  def edit
  end

  # POST /feature_applicabilities or /feature_applicabilities.json
  def create
    @feature_applicability = FeatureApplicability.new(feature_applicability_params)

    respond_to do |format|
      if @feature_applicability.save
        format.html { redirect_to feature_applicability_url(@feature_applicability), notice: "Feature applicability was successfully created." }
        format.json { render :show, status: :created, location: @feature_applicability }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @feature_applicability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feature_applicabilities/1 or /feature_applicabilities/1.json
  def update
    respond_to do |format|
      if @feature_applicability.update(feature_applicability_params)
        format.html { redirect_to feature_applicability_url(@feature_applicability), notice: "Feature applicability was successfully updated." }
        format.json { render :show, status: :ok, location: @feature_applicability }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @feature_applicability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feature_applicabilities/1 or /feature_applicabilities/1.json
  def destroy
    @feature_applicability.destroy!

    respond_to do |format|
      format.html { redirect_to feature_applicabilities_url, notice: "Feature applicability was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feature_applicability
      @feature_applicability = FeatureApplicability.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def feature_applicability_params
      params.require(:feature_applicability).permit(:feature_id, :good_id, :applicability_type_id, :from_date, :thru_date)
    end
end
