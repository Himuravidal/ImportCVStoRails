class CreateSails < ActiveRecord::Migration[5.1]
  def change
    create_table :sails do |t|
      t.string :CountCode
      t.string :Rut
      t.string :VD
      t.string :Client
      t.string :EmisionDay
      t.integer :EmisionMonth
      t.integer :EmisionYear
      t.integer :DocumentNumber
      t.integer :DetailNumber
      t.integer :DocumentType
      t.string :DetailCodenumber
      t.integer :NetValue
      t.integer :Iva
      t.integer :CostCenter
      t.integer :Cpmonth
      t.integer :Cpyear

      t.timestamps
    end
  end
end
