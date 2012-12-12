require "yaml"
desc "creates all models based on a yaml file"

task:parse_yaml do
  hash = (YAML.load_file(([Rails.root, '/lib/tasks/setup/db.yaml'].join)))
   has_manys_needed = []
   hash.each do |key1, value1|
     attributes = []
     value1.each do |key, value|
        unless (%w[id updated_at created_at]).include?(key.to_s)
          if key.end_with?("_id")
            attributes << " #{key.split("_id").first}:references"
            has_manys_needed << [key.split("_id").first.to_s, key1.to_s]
          else
            attributes << " #{key}:#{value}"
          end
        end
     end
     p ("rails g clean_model " + key1.to_s.classify + attributes.join )
     system("rails g clean_model " + key1.to_s.classify + attributes.join )
   end
   p has_manys_needed
end