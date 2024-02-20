class BloodsController < ApplicationController
  before_action :set_blood, only: [:show, :update, :destroy]

  #group_list = %w(A B AB O).each
  #type_list = %w( A B AB O).each
  #rh_list = %w(POSITIVO NEGATIVO).each

  group_list = ["A", "B", "AB", "O"].to_enum
  type_list = ["A", "B", "AB", "O"].to_enum
  rh_list = ["POSITIVO", "NEGATIVO"].to_enum

  # GET /bloods
  def index
    @bloods = Blood.all

    render json: @bloods
  end

  # GET /bloods/1
  def show
    render json: @blood
  end

  # POST /bloods
  def create
    @blood = Blood.new(blood_params)

    if @blood.save
      render json: @blood, status: :created, location: @blood
    else
      render json: @blood.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bloods/1
  def update
    if @blood.update(blood_params)
      render json: @blood
    else
      render json: @blood.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bloods/1
  def destroy
    @blood.destroy
  end

  def group_list
    group_list
  end

  def type_list
    type_list
  end

  def rh_list
    rh_list
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blood
      @blood = Blood.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def blood_params
      params.require(:blood).permit(:person_id, :group, :type, :rh)
    end
end
