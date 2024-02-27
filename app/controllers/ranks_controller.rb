class RanksController < ApplicationController
  before_action :set_rank, only: %i[ show update destroy ]

  # GET /ranks
  # GET /ranks.json
  def index
    @ranks = Rank.all
  end

  # GET /ranks/1
  # GET /ranks/1.json
  def show
  end

  # POST /ranks
  # POST /ranks.json
  def create
    @rank = Rank.new(rank_params)

    if @rank.save
      render :show, status: :created, location: @rank
    else
      render json: @rank.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ranks/1
  # PATCH/PUT /ranks/1.json
  def update
    if @rank.update(rank_params)
      render :show, status: :ok, location: @rank
    else
      render json: @rank.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ranks/1
  # DELETE /ranks/1.json
  def destroy
    @rank.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rank
      @rank = Rank.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rank_params
      params.require(:rank).permit(:name, :sign, :type, :code_type, :raking)
    end
end
