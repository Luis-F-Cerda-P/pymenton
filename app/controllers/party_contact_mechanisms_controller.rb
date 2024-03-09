class PartyContactMechanismsController < ApplicationController
  before_action :set_party_contact_mechanism, only: %i[ show edit update destroy ]

  # GET /party_contact_mechanisms or /party_contact_mechanisms.json
  def index
    @party_contact_mechanisms = PartyContactMechanism.all
  end

  # GET /party_contact_mechanisms/1 or /party_contact_mechanisms/1.json
  def show
  end

  # GET /party_contact_mechanisms/new
  def new
    @party_contact_mechanism = PartyContactMechanism.new
  end

  # GET /party_contact_mechanisms/1/edit
  def edit
  end

  # POST /party_contact_mechanisms or /party_contact_mechanisms.json
  def create
    @party_contact_mechanism = PartyContactMechanism.new(party_contact_mechanism_params)

    respond_to do |format|
      if @party_contact_mechanism.save
        format.html { redirect_to party_contact_mechanism_url(@party_contact_mechanism), notice: "Party contact mechanism was successfully created." }
        format.json { render :show, status: :created, location: @party_contact_mechanism }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @party_contact_mechanism.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /party_contact_mechanisms/1 or /party_contact_mechanisms/1.json
  def update
    respond_to do |format|
      if @party_contact_mechanism.update(party_contact_mechanism_params)
        format.html { redirect_to party_contact_mechanism_url(@party_contact_mechanism), notice: "Party contact mechanism was successfully updated." }
        format.json { render :show, status: :ok, location: @party_contact_mechanism }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @party_contact_mechanism.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /party_contact_mechanisms/1 or /party_contact_mechanisms/1.json
  def destroy
    @party_contact_mechanism.destroy!

    respond_to do |format|
      format.html { redirect_to party_contact_mechanisms_url, notice: "Party contact mechanism was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_party_contact_mechanism
      @party_contact_mechanism = PartyContactMechanism.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def party_contact_mechanism_params
      params.require(:party_contact_mechanism).permit(:contact_mechanism_id, :party_id)
    end
end
