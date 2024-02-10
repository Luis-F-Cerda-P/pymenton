class IdentifierTypesController < ApplicationController
  before_action :set_identifier_type, only: %i[ show edit update destroy ]

  # GET /identifier_types or /identifier_types.json
  def index
    @identifier_types = IdentifierType.all
  end

  # GET /identifier_types/1 or /identifier_types/1.json
  def show
  end

  # GET /identifier_types/new
  def new
    @identifier_type = IdentifierType.new
  end

  # GET /identifier_types/1/edit
  def edit
  end

  # POST /identifier_types or /identifier_types.json
  def create
    @identifier_type = IdentifierType.new(identifier_type_params)

    respond_to do |format|
      if @identifier_type.save
        format.html { redirect_to identifier_type_url(@identifier_type), notice: "Identifier type was successfully created." }
        format.json { render :show, status: :created, location: @identifier_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @identifier_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /identifier_types/1 or /identifier_types/1.json
  def update
    respond_to do |format|
      if @identifier_type.update(identifier_type_params)
        format.html { redirect_to identifier_type_url(@identifier_type), notice: "Identifier type was successfully updated." }
        format.json { render :show, status: :ok, location: @identifier_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @identifier_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /identifier_types/1 or /identifier_types/1.json
  def destroy
    @identifier_type.destroy!

    respond_to do |format|
      format.html { redirect_to identifier_types_url, notice: "Identifier type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_identifier_type
      @identifier_type = IdentifierType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def identifier_type_params
      params.require(:identifier_type).permit(:description)
    end
end
