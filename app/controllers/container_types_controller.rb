class ContainerTypesController < ApplicationController
  before_action :set_container_type, only: %i[ show edit update destroy ]

  # GET /container_types or /container_types.json
  def index
    @container_types = ContainerType.all
  end

  # GET /container_types/1 or /container_types/1.json
  def show
  end

  # GET /container_types/new
  def new
    @container_type = ContainerType.new
  end

  # GET /container_types/1/edit
  def edit
  end

  # POST /container_types or /container_types.json
  def create
    @container_type = ContainerType.new(container_type_params)

    respond_to do |format|
      if @container_type.save
        format.html { redirect_to container_type_url(@container_type), notice: "Container type was successfully created." }
        format.json { render :show, status: :created, location: @container_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @container_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /container_types/1 or /container_types/1.json
  def update
    respond_to do |format|
      if @container_type.update(container_type_params)
        format.html { redirect_to container_type_url(@container_type), notice: "Container type was successfully updated." }
        format.json { render :show, status: :ok, location: @container_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @container_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /container_types/1 or /container_types/1.json
  def destroy
    @container_type.destroy!

    respond_to do |format|
      format.html { redirect_to container_types_url, notice: "Container type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_container_type
      @container_type = ContainerType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def container_type_params
      params.require(:container_type).permit(:description)
    end
end
