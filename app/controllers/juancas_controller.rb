class JuancasController < ApplicationController
  before_action :set_juanca, only: %i[ show edit update destroy ]

  # GET /juancas or /juancas.json
  def index
    @juancas = Juanca.all
  end

  # GET /juancas/1 or /juancas/1.json
  def show
  end

  # GET /juancas/new
  def new
    @juanca = Juanca.new
  end

  # GET /juancas/1/edit
  def edit
  end

  # POST /juancas or /juancas.json
  def create
    @juanca = Juanca.new(juanca_params)

    respond_to do |format|
      if @juanca.save
        format.html { redirect_to juanca_url(@juanca), notice: "Juanca was successfully created." }
        format.json { render :show, status: :created, location: @juanca }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @juanca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /juancas/1 or /juancas/1.json
  def update
    respond_to do |format|
      if @juanca.update(juanca_params)
        format.html { redirect_to juanca_url(@juanca), notice: "Juanca was successfully updated." }
        format.json { render :show, status: :ok, location: @juanca }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @juanca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /juancas/1 or /juancas/1.json
  def destroy
    @juanca.destroy!

    respond_to do |format|
      format.html { redirect_to juancas_url, notice: "Juanca was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_juanca
      @juanca = Juanca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def juanca_params
      params.require(:juanca).permit(:nombre, :apellido)
    end
end
