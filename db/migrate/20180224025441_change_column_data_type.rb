class ChangeColumnDataType < ActiveRecord::Migration[5.1]
  def change
    change_column :Sails, :DocumentNumber, :float
  end
end
