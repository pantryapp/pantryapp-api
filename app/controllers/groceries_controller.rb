class GroceriesController < ApplicationController
  # GET /groceries
  # GET /groceries.json
  def index
    @groceries = Grocery.all

    render json: @groceries
  end

  # GET /groceries/1
  # GET /groceries/1.json
  def show
    @grocery = Grocery.find(params[:id])

    render json: @grocery
  end

  # POST /groceries
  # POST /groceries.json
  def create
    @grocery = Grocery.new(grocery_params)

    if @grocery.save
      render json: @grocery, status: :created, location: @grocery
    else
      render json: @grocery.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groceries/1
  # PATCH/PUT /groceries/1.json
  def update
    @grocery = Grocery.find(params[:id])

    if @grocery.update(grocery_params)
      head :no_content
    else
      render json: @grocery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /groceries/1
  # DELETE /groceries/1.json
  def destroy
    @grocery = Grocery.find(params[:id])
    @grocery.destroy

    head :no_content
  end

  def grocery_params
    params.permit(:name, :slug, :pantryitem_id)
  end
end
