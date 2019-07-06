require "pry"
def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key, value|
    value.each do |next_value, names|
      names.each do |name|
        
       if !new_hash[name]
          new_hash[name] = {}
        end

        if !new_hash[name][key]
          new_hash[name][key] = []
        end
        
        new_hash[name][key] << next_value.to_s
        # binding.pry
       end
     end
  end
  new_hash
end
#make a new hash using the birds name as keys and color, gender, and lives as values