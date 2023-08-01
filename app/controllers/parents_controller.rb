class ParentsController < ApplicationController
  before_action :set_parent, only: [:show, :update, :destroy]

  # GET /parents
  def index
    @parents = Parent.all

    render json: @parents
  end

  # GET /parents/1
  def show
    render json: @parent
  end

  # POST /parents
  def create
    @parent = Parent.new(parent_params)

    if @parent.save
      render json: @parent, status: :created, location: @parent
    else
      render json: @parent.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parents/1
  def update
    if @parent.update(parent_params)
      render json: @parent
    else
      render json: @parent.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parents/1
  def destroy
    @parent.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent
      @parent = Parent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def parent_params
      params.require(:parent).permit(:person_id, :mother, :father)
    end
end
