class AttributeTypesController < ApplicationController
  before_action :set_attribute_field, only: %i[show edit update destroy]

  # GET /attribute_fields or /attribute_fields.json
  def index
    @attribute_types = AttributeType.all
  end

  # GET /attribute_fields/1 or /attribute_fields/1.json
  def show; end

  # GET /attribute_fields/new
  def new
    @attribute_type = AttributeType.new
  end

  # GET /attribute_fields/1/edit
  def edit; end

  # POST /attribute_fields or /attribute_fields.json
  def create
    @attribute_type = AttributeType.new(attribute_field_params)

    respond_to do |format|
      if @attribute_type.save
        format.html do
          redirect_to attribute_field_url(@attribute_type), notice: 'Attribute field was successfully created.'
        end
        format.json { render :show, status: :created, location: @attribute_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @attribute_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attribute_fields/1 or /attribute_fields/1.json
  def update
    respond_to do |format|
      if @attribute_type.update(attribute_field_params)
        format.html do
          redirect_to attribute_field_url(@attribute_type), notice: 'Attribute field was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @attribute_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attribute_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attribute_fields/1 or /attribute_fields/1.json
  def destroy
    @attribute_type.destroy!

    respond_to do |format|
      format.html { redirect_to attribute_fields_url, notice: 'Attribute field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_attribute_field
    @attribute_type = AttributeType.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def attribute_field_params
    params.require(:attribute_field).permit(:name)
  end
end
