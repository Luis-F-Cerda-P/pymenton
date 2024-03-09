class PicklistsController < ApplicationController
  before_action :set_picklist, only: %i[ show edit update destroy ]

  # GET /picklists or /picklists.json
  def index
    @picklists = Picklist.all
  end

  # GET /picklists/1 or /picklists/1.json
  def show
  end

  # GET /picklists/new
  def new
    @picklist = Picklist.new
  end

  # GET /picklists/1/edit
  def edit
  end

  # POST /picklists or /picklists.json
  def create
    @picklist = Picklist.new(picklist_params)

    respond_to do |format|
      if @picklist.save
        format.html { redirect_to picklist_url(@picklist), notice: "Picklist was successfully created." }
        format.json { render :show, status: :created, location: @picklist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @picklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picklists/1 or /picklists/1.json
  def update
    respond_to do |format|
      if @picklist.update(picklist_params)
        format.html { redirect_to picklist_url(@picklist), notice: "Picklist was successfully updated." }
        format.json { render :show, status: :ok, location: @picklist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @picklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picklists/1 or /picklists/1.json
  def destroy
    @picklist.destroy!

    respond_to do |format|
      format.html { redirect_to picklists_url, notice: "Picklist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picklist
      @picklist = Picklist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def picklist_params
      params.fetch(:picklist, {})
    end
end
