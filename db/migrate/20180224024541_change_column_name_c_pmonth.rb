class ChangeColumnNameCPmonth < ActiveRecord::Migration[5.1]
  def change
    rename_column :Sails, :CPmonth, :Cpmonth
    rename_column :Sails, :CPyear, :Cpyear
  end
end
