require 'roo'

file_name = "#{Rails.root}/db/Inventario1.xlsx"
p File.exist?(file_name)
p file_name
xlsx = Roo::Spreadsheet.open(file_name)

