class FooditemsController < ApplicationController
  before_action :set_fooditem, only: [:show, :edit, :update, :destroy]

  # GET /fooditems
  # GET /fooditems.json
  def index
    @fooditems = Fooditem.all
  end

  # GET /fooditems/1
  # GET /fooditems/1.json
  def show
  end

  # GET /fooditems/new
  def new
    @fooditem = Fooditem.new
  end

  # GET /fooditems/1/edit
  def edit
  end

  # POST /fooditems
  # POST /fooditems.json
  def create
    @fooditem = Fooditem.new(fooditem_params)

    respond_to do |format|
      if @fooditem.save
        format.html { redirect_to @fooditem, notice: 'Fooditem was successfully created.' }
        format.json { render :show, status: :created, location: @fooditem }
      else
        format.html { render :new }
        format.json { render json: @fooditem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fooditems/1
  # PATCH/PUT /fooditems/1.json
  def update
    respond_to do |format|
      if @fooditem.update(fooditem_params)
        format.html { redirect_to @fooditem, notice: 'Fooditem was successfully updated.' }
        format.json { render :show, status: :ok, location: @fooditem }
      else
        format.html { render :edit }
        format.json { render json: @fooditem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fooditems/1
  # DELETE /fooditems/1.json
  def destroy
    @fooditem.destroy
    respond_to do |format|
      format.html { redirect_to fooditems_url, notice: 'Fooditem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fooditem
      @fooditem = Fooditem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fooditem_params
      params.require(:fooditem).permit(:description, :name, :price, :ima_url, :section)
    end

    def image_url_or_default
if ima_url.present?
  ima_url
else
 "http://loremflickr.com/320/240/#{name}"  
end

end 

end
