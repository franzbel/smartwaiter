class HelperController < ApplicationController
  def index
  	@mesas = Table.where(:state=>"limpieza")
  end
  def clean_table
  	@mesa = Table.find(params[:id])
  	@mesa.state= "libre"
  	@mesa.save
  	redirect_to helper_index_path
  end
end
