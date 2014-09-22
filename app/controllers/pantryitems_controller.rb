class PantryitemsController < ApplicationController
  # GET /pantryitems
  # GET /pantryitems.json
  def index
    @pantryitems = Pantryitem.all

    render json: @pantryitems
  end

  # GET /pantryitems/1
  # GET /pantryitems/1.json
  def show
    @pantryitem = Pantryitem.find(params[:id])

    render json: @pantryitem
  end

  # POST /pantryitems
  # POST /pantryitems.json
  def create
    # @pantryitem = Pantryitem.new(params[:pantryitem])
    @pantryitem = Pantryitem.new(pantryitem_params)

    if @pantryitem.save
      render json: @pantryitem, status: :created, location: @pantryitem
    else
      render json: @pantryitem.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pantryitems/1
  # PATCH/PUT /pantryitems/1.json
  def update
    @pantryitem = Pantryitem.find(params[:id])

    if @pantryitem.update(params[:pantryitem])
      head :no_content
    else
      render json: @pantryitem.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pantryitems/1
  # DELETE /pantryitems/1.json
  def destroy
    @pantryitem = Pantryitem.find(params[:id])
    @pantryitem.destroy

    head :no_content
  end

  private

  def pantryitem_params
    params.require(:pantryitem).permit(:name, :outofstock)
  end

end
