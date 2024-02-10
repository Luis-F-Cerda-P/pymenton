class ContactChannelsController < ApplicationController
  before_action :set_contact_channel, only: %i[ show edit update destroy ]

  # GET /contact_channels or /contact_channels.json
  def index
    @contact_channels = ContactChannel.all
  end

  # GET /contact_channels/1 or /contact_channels/1.json
  def show
  end

  # GET /contact_channels/new
  def new
    @contact_channel = ContactChannel.new
  end

  # GET /contact_channels/1/edit
  def edit
  end

  # POST /contact_channels or /contact_channels.json
  def create
    @contact_channel = ContactChannel.new(contact_channel_params)

    respond_to do |format|
      if @contact_channel.save
        format.html { redirect_to contact_channel_url(@contact_channel), notice: "Contact channel was successfully created." }
        format.json { render :show, status: :created, location: @contact_channel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_channels/1 or /contact_channels/1.json
  def update
    respond_to do |format|
      if @contact_channel.update(contact_channel_params)
        format.html { redirect_to contact_channel_url(@contact_channel), notice: "Contact channel was successfully updated." }
        format.json { render :show, status: :ok, location: @contact_channel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contact_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_channels/1 or /contact_channels/1.json
  def destroy
    @contact_channel.destroy!

    respond_to do |format|
      format.html { redirect_to contact_channels_url, notice: "Contact channel was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_channel
      @contact_channel = ContactChannel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_channel_params
      params.require(:contact_channel).permit(:description)
    end
end
