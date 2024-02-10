class TransportationTypesController < ApplicationController
  before_action :set_transportation_type, only: %i[ show edit update destroy ]

  # GET /transportation_types or /transportation_types.json
  def index
    @transportation_types = TransportationType.all
  end

  # GET /transportation_types/1 or /transportation_types/1.json
  def show
  end

  # GET /transportation_types/new
  def new
    @transportation_type = TransportationType.new
  end

  # GET /transportation_types/1/edit
  def edit
  end

  # POST /transportation_types or /transportation_types.json
  def create
    @transportation_type = TransportationType.new(transportation_type_params)

    respond_to do |format|
      if @transportation_type.save
        format.html { redirect_to transportation_type_url(@transportation_type), notice: "Transportation type was successfully created." }
        format.json { render :show, status: :created, location: @transportation_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transportation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transportation_types/1 or /transportation_types/1.json
  def update
    respond_to do |format|
      if @transportation_type.update(transportation_type_params)
        format.html { redirect_to transportation_type_url(@transportation_type), notice: "Transportation type was successfully updated." }
        format.json { render :show, status: :ok, location: @transportation_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transportation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transportation_types/1 or /transportation_types/1.json
  def destroy
    @transportation_type.destroy!

    respond_to do |format|
      format.html { redirect_to transportation_types_url, notice: "Transportation type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transportation_type
      @transportation_type = TransportationType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transportation_type_params
      params.require(:transportation_type).permit(:description, :associated_costs)
    end
end
