require 'pry'
def nyc_pigeon_organizer(data)
  name_hash = data.reduce({}) do |memo, (trait, category_hash)| 
    category_hash.each_pair do |(quality, names)|
      names.count do |name|
        if memo[name] === nil
          memo[name] = {}
        end
        if memo[name][trait] === nil
          memo[name][trait] = []
        end
        memo[name][trait].push(quality.to_s)
      end
    end
    memo
  end
  name_hash
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
