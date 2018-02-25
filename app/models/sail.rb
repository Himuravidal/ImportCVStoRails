class Sail < ApplicationRecord
require 'csv'

def self.import(file)
  CSV.foreach(file.path, headers: true, encoding: 'iso-8859-1:utf-8',col_sep: ";") do |row|
    Sail.create! row.to_hash
  end
end

def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |sails|
      csv << sails.attributes.values
    end
  end
end

end
