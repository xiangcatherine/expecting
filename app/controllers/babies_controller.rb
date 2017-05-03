class BabiesController < ApplicationController
  before_action :set_baby, only: [:show, :update, :destroy]

  # GET /babies
  def index
    @babies = Baby.all

    render json: @babies
  end

  # GET /babies/1
  def show
    render json: @baby
  end

  # POST /babies
  def create
    @baby = Baby.new(baby_params)

    if @baby.save
      render json: @baby, status: :created, location: @baby
    else
      render json: @baby.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /babies/1
  def update
    if @baby.update(baby_params)
      render json: @baby
    else
      render json: @baby.errors, status: :unprocessable_entity
    end
  end

  # DELETE /babies/1
  def destroy
    @baby.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baby
      @baby = Baby.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def baby_params
      params.require(:baby).permit(:age)
    end
end
