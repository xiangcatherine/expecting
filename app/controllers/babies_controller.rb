class BabiesController < ProtectedController
  before_action :set_baby, only: [:index, :show, :update, :destroy]

  # GET /babies
  def index
    render json: @baby
  end

  # GET /babies/1
  def show
    render json: @baby
  end

  # POST /babies
  def create
    @baby = current_user.build_baby(baby_params)

    if @baby.save
      render json: @baby, status: :created, location: @baby
    else
      render json: @baby.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /babies/1
  def update
    @baby.age = @baby.current_age

    if @baby.save
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
    set_current_user
    @baby = current_user.baby
  end

  # Only allow a trusted parameter "white list" through.
  def baby_params
    params.require(:baby).permit(:age)
  end
end
