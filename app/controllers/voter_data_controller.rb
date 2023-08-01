class VoterDataController < ApplicationController
  before_action :set_voter_datum, only: [:show, :update, :destroy]

  # GET /voter_data
  def index
    @voter_data = VoterDatum.all

    render json: @voter_data
  end

  # GET /voter_data/1
  def show
    render json: @voter_datum
  end

  # POST /voter_data
  def create
    @voter_datum = VoterDatum.new(voter_datum_params)

    if @voter_datum.save
      render json: @voter_datum, status: :created, location: @voter_datum
    else
      render json: @voter_datum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /voter_data/1
  def update
    if @voter_datum.update(voter_datum_params)
      render json: @voter_datum
    else
      render json: @voter_datum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /voter_data/1
  def destroy
    @voter_datum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voter_datum
      @voter_datum = VoterDatum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def voter_datum_params
      params.require(:voter_datum).permit(:person_id, :number, :zone, :section)
    end
end
