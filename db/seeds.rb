require 'csv'

def obtain_all_model_names
  # Get all the model files in the app/models directory
  model_files = Dir[Rails.root.join('app', 'models', '*.rb')]

  # Extract model names from file names
  models = model_files.map do |file|
    File.basename(file, '.rb').camelize.constantize
  end

  # Filter out non-class objects and return class names
  model_names = models.select { |m| m.is_a?(Class) }.map(&:name)
end

def generate_csv_path(model_name)
  file_path = Rails.root.join('lib', 'seeds', "#{model_name}.csv")
end

def seed_exists?(path)
  File.exist?(path)
end

def load_seed(path, model_name)
  csv_data = CSV.read(path, headers: true)
  model = model_name.constantize
  # Process the CSV data here
  csv_data.each do |row|
    model.create(row.to_hash)
  end

  puts "We seeded #{model.count} records for the #{model} model"
end

models = obtain_all_model_names

models.each do |model|
  next if model == 'ApplicationRecord'

  path = generate_csv_path(model)
  if seed_exists? path
    load_seed(path, model)
  else
    puts "There are no valid seeds for the #{model} model"
  end
end
