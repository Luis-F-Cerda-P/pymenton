class ReorderGuidelinesController < ApplicationController
  before_action :set_reorder_guideline, only: %i[ show edit update destroy ]

  # GET /reorder_guidelines or /reorder_guidelines.json
  def index
    @reorder_guidelines = ReorderGuideline.all
  end

  # GET /reorder_guidelines/1 or /reorder_guidelines/1.json
  def show
  end

  # GET /reorder_guidelines/new
  def new
    @reorder_guideline = ReorderGuideline.new
  end

  # GET /reorder_guidelines/1/edit
  def edit
  end

  # POST /reorder_guidelines or /reorder_guidelines.json
  def create
    @reorder_guideline = ReorderGuideline.new(reorder_guideline_params)

    respond_to do |format|
      if @reorder_guideline.save
        format.html { redirect_to reorder_guideline_url(@reorder_guideline), notice: "Reorder guideline was successfully created." }
        format.json { render :show, status: :created, location: @reorder_guideline }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reorder_guideline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reorder_guidelines/1 or /reorder_guidelines/1.json
  def update
    respond_to do |format|
      if @reorder_guideline.update(reorder_guideline_params)
        format.html { redirect_to reorder_guideline_url(@reorder_guideline), notice: "Reorder guideline was successfully updated." }
        format.json { render :show, status: :ok, location: @reorder_guideline }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reorder_guideline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reorder_guidelines/1 or /reorder_guidelines/1.json
  def destroy
    @reorder_guideline.destroy!

    respond_to do |format|
      format.html { redirect_to reorder_guidelines_url, notice: "Reorder guideline was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reorder_guideline
      @reorder_guideline = ReorderGuideline.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reorder_guideline_params
      params.require(:reorder_guideline).permit(:good_id, :facility_id, :from_date, :thru_date, :reorder_quantity, :reorder_level)
    end
end
