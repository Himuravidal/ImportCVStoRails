class SailsController < ApplicationController
  def index
    @sails = Sail.all
  end

  def import
    Sail.import(params[:file])
    redirect_to root_url, notice: "Datos Importados"
  end
end
