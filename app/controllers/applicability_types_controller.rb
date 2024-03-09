class ApplicabilityTypesController < ApplicationController
  before_action :set_applicability_type, only: %i[ show edit update destroy ]

  # GET /applicability_types or /applicability_types.json
  def index
    @applicability_types = ApplicabilityType.all
  end

  # GET /applicability_types/1 or /applicability_types/1.json
  def show
  end

  # GET /applicability_types/new
  def new
    @applicability_type = ApplicabilityType.new
  end

  # GET /applicability_types/1/edit
  def edit
  end

  # POST /applicability_types or /applicability_types.json
  def create
    @applicability_type = ApplicabilityType.new(applicability_type_params)

    respond_to do |format|
      if @applicability_type.save
        format.html { redirect_to applicability_type_url(@applicability_type), notice: "Applicability type was successfully created." }
        format.json { render :show, status: :created, location: @applicability_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @applicability_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applicability_types/1 or /applicability_types/1.json
  def update
    respond_to do |format|
      if @applicability_type.update(applicability_type_params)
        format.html { redirect_to applicability_type_url(@applicability_type), notice: "Applicability type was successfully updated." }
        format.json { render :show, status: :ok, location: @applicability_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @applicability_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicability_types/1 or /applicability_types/1.json
  def destroy
    @applicability_type.destroy!

    respond_to do |format|
      format.html { redirect_to applicability_types_url, notice: "Applicability type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applicability_type
      @applicability_type = ApplicabilityType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def applicability_type_params
      params.require(:applicability_type).permit(:description)
    end
end
