class NotaController < ApplicationController
  before_action :set_notum, only: [:show, :update, :destroy]

  # GET /nota
  def index
    @nota = Notum.all

    render json: @nota
  end

  # GET /nota/1
  def show
    render json: @notum
  end

  # POST /nota
  def create
    @notum = Notum.new(notum_params)

    if @notum.save
      render json: @notum, status: :created, location: @notum
    else
      render json: @notum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nota/1
  def update
    if @notum.update(notum_params)
      render json: @notum
    else
      render json: @notum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nota/1
  def destroy
    @notum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notum
      @notum = Notum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def notum_params
      params.require(:notum).permit(:titulo, :fecha, :nota)
    end
end
