class ItemsController < ApplicationController

  # GET /items
  # GET /items.json
  def index
    @items = Item.where(query_params)

    render json: @items
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.find(params[:id])

    render json: @item
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    if @item.save
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      head :no_content
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    head :no_content
  end

  private

  def item_params
    params.permit(:name, :outofstock, :slug, :category, :store_category)
  end

  def query_params
    params.permit(:store_category, :name, :id)
  end

end
