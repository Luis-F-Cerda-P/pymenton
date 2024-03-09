class PartyTypesController < ApplicationController
  before_action :set_party_type, only: %i[ show edit update destroy ]

  # GET /party_types or /party_types.json
  def index
    @party_types = PartyType.all
  end

  # GET /party_types/1 or /party_types/1.json
  def show
  end

  # GET /party_types/new
  def new
    @party_type = PartyType.new
  end

  # GET /party_types/1/edit
  def edit
  end

  # POST /party_types or /party_types.json
  def create
    @party_type = PartyType.new(party_type_params)

    respond_to do |format|
      if @party_type.save
        format.html { redirect_to party_type_url(@party_type), notice: "Party type was successfully created." }
        format.json { render :show, status: :created, location: @party_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @party_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /party_types/1 or /party_types/1.json
  def update
    respond_to do |format|
      if @party_type.update(party_type_params)
        format.html { redirect_to party_type_url(@party_type), notice: "Party type was successfully updated." }
        format.json { render :show, status: :ok, location: @party_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @party_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /party_types/1 or /party_types/1.json
  def destroy
    @party_type.destroy!

    respond_to do |format|
      format.html { redirect_to party_types_url, notice: "Party type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_party_type
      @party_type = PartyType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def party_type_params
      params.require(:party_type).permit(:description)
    end
end
