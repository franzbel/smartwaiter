class FoodOrdersController < ApplicationController
  before_action :set_food_order, only: [:show, :edit, :update, :destroy]

  # GET /food_orders
  # GET /food_orders.json
  def index
    @food_orders = FoodOrder.all
  end

  # GET /food_orders/1
  # GET /food_orders/1.json
  def show
  end

  # GET /food_orders/new
  def new
    @food_order = FoodOrder.new
  end

  # GET /food_orders/1/edit
  def edit
  end

  # POST /food_orders
  # POST /food_orders.json
  def create
    @food_order = FoodOrder.new(food_order_params)

    respond_to do |format|
      if @food_order.save
        format.html { redirect_to @food_order, notice: 'Food order was successfully created.' }
        format.json { render action: 'show', status: :created, location: @food_order }
      else
        format.html { render action: 'new' }
        format.json { render json: @food_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_orders/1
  # PATCH/PUT /food_orders/1.json
  def update
    respond_to do |format|
      if @food_order.update(food_order_params)
        format.html { redirect_to @food_order, notice: 'Food order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @food_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_orders/1
  # DELETE /food_orders/1.json
  def destroy
    @food_order.destroy
    respond_to do |format|
      format.html { redirect_to food_orders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_order
      @food_order = FoodOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_order_params
      params.require(:food_order).permit(:name, :quantity, :price, :state, :takeaway)
    end
end
