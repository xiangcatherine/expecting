class MothersController < ApplicationController
  before_action :set_mother, only: [:show, :update, :destroy]

  # GET /mothers
  def index
    @mothers = Mother.all

    render json: @mothers
  end

  # GET /mothers/1
  def show
    render json: @mother
  end

  # POST /mothers
  def create
    @mother = Mother.new(mother_params)

    if @mother.save
      render json: @mother, status: :created, location: @mother
    else
      render json: @mother.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mothers/1
  def update
    if @mother.update(mother_params)
      render json: @mother
    else
      render json: @mother.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mothers/1
  def destroy
    @mother.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mother
      @mother = Mother.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mother_params
      params.require(:mother).permit(:given_name, :family_name)
    end
end
