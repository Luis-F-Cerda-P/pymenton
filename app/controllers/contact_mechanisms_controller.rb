class ContactMechanismsController < ApplicationController
  before_action :set_contact_mechanism, only: %i[ show edit update destroy ]

  # GET /contact_mechanisms or /contact_mechanisms.json
  def index
    @contact_mechanisms = ContactMechanism.all
  end

  # GET /contact_mechanisms/1 or /contact_mechanisms/1.json
  def show
  end

  # GET /contact_mechanisms/new
  def new
    @contact_mechanism = ContactMechanism.new
  end

  # GET /contact_mechanisms/1/edit
  def edit
  end

  # POST /contact_mechanisms or /contact_mechanisms.json
  def create
    @contact_mechanism = ContactMechanism.new(contact_mechanism_params)

    respond_to do |format|
      if @contact_mechanism.save
        format.html { redirect_to contact_mechanism_url(@contact_mechanism), notice: "Contact mechanism was successfully created." }
        format.json { render :show, status: :created, location: @contact_mechanism }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact_mechanism.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_mechanisms/1 or /contact_mechanisms/1.json
  def update
    respond_to do |format|
      if @contact_mechanism.update(contact_mechanism_params)
        format.html { redirect_to contact_mechanism_url(@contact_mechanism), notice: "Contact mechanism was successfully updated." }
        format.json { render :show, status: :ok, location: @contact_mechanism }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contact_mechanism.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_mechanisms/1 or /contact_mechanisms/1.json
  def destroy
    @contact_mechanism.destroy!

    respond_to do |format|
      format.html { redirect_to contact_mechanisms_url, notice: "Contact mechanism was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_mechanism
      @contact_mechanism = ContactMechanism.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_mechanism_params
      params.require(:contact_mechanism).permit(:contact_mechanism_type_id)
    end
end
