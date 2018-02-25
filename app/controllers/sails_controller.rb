class SailsController < ApplicationController
  def index
    @sails = Sail.all
  end

  def import
    Sail.import(params[:file])
    redirect_to root_url, notice: "Datos Importados"
  end


  def export
    @sails = Sail.all
    respond_to do |format|
    format.html
    format.csv { send_data @sails.to_csv }
    format.xls { send_data @sails.to_csv(col_sep: "\t")}
  end
  end

end
