class WaitersController < ApplicationController
  def index
  	@tables = Table.all
  end
  def take_order
  	@mesa=Table.find(params[:id])
  	@comidas = Food.where(:product_type=>"comida")

  end
 
  def take_drink_order
  	@mesa=Table.find(params[:id])
  	@comidas = Food.where(:product_type=>"bebida")
  end

  def create_order
  	#render text: "holas"
  	#render text: params[:cantidad_ids]
  	#render text: params[:comida_ids]
  	#render text: params[:cantidades]
  	#render text: @comida.name
  	arreglo=[]
  	params[:cantidades].each do|c|
  		if c >"0" 
  			arreglo<<c
  		end
  	end
  	cont=0
  	#render text: arreglo
  	@mesa = Table.find(params[:mesa_ids].first.to_i)
  	@mesa.state = "ocupada"
  	@mesa.save
  	
  	params[:comida_ids].each do |f|
  		
  		@comida=Food.where(:id => f)

  		@order = Order.new
  		@order.quantity = arreglo[cont]
  		@order.table_id = params[:mesa_ids].first.to_i
  		@order.state = "en proceso"
  		@order.save
  		cont =cont + 1
  		@order.foods<<@comida
  	end
  	redirect_to waiters_index_path
  end
  def serving_food
  	@order = Order.find(params[:id])
  	@order.state="servido"
  	@order.save
  	redirect_to waiters_index_path
  end
  def set_table
  	@mesa = Table.find(params[:id])
  	@mesa.state = "limpieza"
  	@mesa.save
  	redirect_to waiters_index_path
  end
end
