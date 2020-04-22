require 'pry'
def nyc_pigeon_organizer(data)

  name_list = []
  trait_list = []
 
  data.each_pair do |(trait, category_hash)|
    category_hash.each_pair do |(quality, names)|
      names.count do |name|
        
        name_list.push(name) unless name_list.include?(name)
      end
      #return the list
      name_list
    end
    name_list
  end
  
  name_hash = Hash[name_list.collect { |name| [name, {}] } ]
 
  data.each_pair {|(trait, category_hash)| trait_list.push(trait) }
 
  trait_hash = Hash[trait_list.collect { |trait| [ trait, [] ] } ]
 
  combined_hash = name_hash.each_pair { |(name, traits)| name_hash[name] = trait_hash }
  combined_hash.each_pair do |(key, value)|
    data.each_pair do |(trait, category_hash)|
      category_hash.each_pair do |(quality, names)|
        if names.include?(key)
          value[trait].push(quality.to_s) unless value[trait].include?(quality.to_s)
        end
        combined_hash
      end
      combined_hash
    end
    combined_hash
  end
  combined_hash
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

nyc_pigeon_organizer(pigeon_data)
