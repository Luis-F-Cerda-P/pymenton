class FeatureTypesController < ApplicationController
  before_action :set_feature_type, only: %i[ show edit update destroy ]

  # GET /feature_types or /feature_types.json
  def index
    @feature_types = FeatureType.all
  end

  # GET /feature_types/1 or /feature_types/1.json
  def show
  end

  # GET /feature_types/new
  def new
    @feature_type = FeatureType.new
  end

  # GET /feature_types/1/edit
  def edit
  end

  # POST /feature_types or /feature_types.json
  def create
    @feature_type = FeatureType.new(feature_type_params)

    respond_to do |format|
      if @feature_type.save
        format.html { redirect_to feature_type_url(@feature_type), notice: "Feature type was successfully created." }
        format.json { render :show, status: :created, location: @feature_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @feature_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feature_types/1 or /feature_types/1.json
  def update
    respond_to do |format|
      if @feature_type.update(feature_type_params)
        format.html { redirect_to feature_type_url(@feature_type), notice: "Feature type was successfully updated." }
        format.json { render :show, status: :ok, location: @feature_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @feature_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feature_types/1 or /feature_types/1.json
  def destroy
    @feature_type.destroy!

    respond_to do |format|
      format.html { redirect_to feature_types_url, notice: "Feature type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feature_type
      @feature_type = FeatureType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def feature_type_params
      params.require(:feature_type).permit(:description)
    end
end
