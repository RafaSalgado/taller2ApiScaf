class ResidenciaController < ApplicationController
  before_action :set_residencium, only: [:show, :update, :destroy]

  # GET /residencia
  def index
    @residencia = Residencium.all

    render json: @residencia
  end

  # GET /residencia/1
  def show
    render json: @residencium
  end

  # POST /residencia
  def create
    @residencium = Residencium.new(residencium_params)

    if @residencium.save
      render json: @residencium, status: :created, location: @residencium
    else
      render json: @residencium.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /residencia/1
  def update
    if @residencium.update(residencium_params)
      render json: @residencium
    else
      render json: @residencium.errors, status: :unprocessable_entity
    end
  end

  # DELETE /residencia/1
  def destroy
    @residencium.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_residencium
      @residencium = Residencium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def residencium_params
      params.require(:residencium).permit(:tipo, :pisos, :estado)
    end
end
