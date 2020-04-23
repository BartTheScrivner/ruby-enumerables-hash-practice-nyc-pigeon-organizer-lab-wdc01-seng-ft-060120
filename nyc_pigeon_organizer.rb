require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  #Create a hash for the pigeon names
  name_hash = {}
  #iterate over the entire hash, extracting names and adding them to the above hash.
  data.each_pair do |(trait, category_hash)|
    category_hash.each_pair do |(quality, names)|
      names.count do |name|
        if name_hash[name] === nil
          name_hash[name] = {}
        end
        if name_hash[name][trait] === nil
          name_hash[name][trait] = []
        end
        pigeon_hash[name][trait].push(quality.to_s)
      end
    end
  end
  pigeon_hash
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
