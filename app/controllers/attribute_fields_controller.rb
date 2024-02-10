class AttributeFieldsController < ApplicationController
  before_action :set_attribute_field, only: %i[ show edit update destroy ]

  # GET /attribute_fields or /attribute_fields.json
  def index
    @attribute_fields = AttributeField.all
  end

  # GET /attribute_fields/1 or /attribute_fields/1.json
  def show
  end

  # GET /attribute_fields/new
  def new
    @attribute_field = AttributeField.new
  end

  # GET /attribute_fields/1/edit
  def edit
  end

  # POST /attribute_fields or /attribute_fields.json
  def create
    @attribute_field = AttributeField.new(attribute_field_params)

    respond_to do |format|
      if @attribute_field.save
        format.html { redirect_to attribute_field_url(@attribute_field), notice: "Attribute field was successfully created." }
        format.json { render :show, status: :created, location: @attribute_field }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @attribute_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attribute_fields/1 or /attribute_fields/1.json
  def update
    respond_to do |format|
      if @attribute_field.update(attribute_field_params)
        format.html { redirect_to attribute_field_url(@attribute_field), notice: "Attribute field was successfully updated." }
        format.json { render :show, status: :ok, location: @attribute_field }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attribute_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attribute_fields/1 or /attribute_fields/1.json
  def destroy
    @attribute_field.destroy!

    respond_to do |format|
      format.html { redirect_to attribute_fields_url, notice: "Attribute field was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attribute_field
      @attribute_field = AttributeField.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attribute_field_params
      params.require(:attribute_field).permit(:name)
    end
end
