require 'pry'
def nyc_pigeon_organizer(data)
  name_hash = data.reduce({}) do |memo, (trait, category_hash)|
    category_hash.each_pair do |quality, names|
      names.count do |name|
        memo[name] unless memo.include?(name)
        memo
        binding.pry
      end
      binding.pry
      name_hash
    end
    binding.pry
  end
  binding.pry
end
binding.pry

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
