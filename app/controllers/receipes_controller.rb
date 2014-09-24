class ReceipesController < ApplicationController
  # GET /receipes
  # GET /receipes.json
  def index
    @receipes = Receipe.all

    render json: @receipes
  end

  # GET /receipes/1
  # GET /receipes/1.json
  def show
    @receipe = Receipe.find(params[:id])

    render json: @receipe
  end

  # POST /receipes
  # POST /receipes.json
  def create
    @receipe = Receipe.new(receipe_params)

    if @receipe.save
      render json: @receipe, status: :created, location: @receipe
    else
      render json: @receipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /receipes/1
  # PATCH/PUT /receipes/1.json
  def update
    @receipe = Receipe.find(params[:id])

    if @receipe.update(receipe_params)
      head :no_content
    else
      render json: @receipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /receipes/1
  # DELETE /receipes/1.json
  def destroy
    @receipe = Receipe.find(params[:id])
    @receipe.destroy

    head :no_content
  end

  def receipe_params
    params.permit(:name, :slug, :ingredients)
  end
end
