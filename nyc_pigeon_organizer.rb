require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  #Create a list for the pigeon names
  name_list = []
  trait_list = []
  #iterate over the entire array, extracting names and adding them to the above list.
  data.each_pair do |(trait, category_hash)|
    category_hash.each_pair do |(quality, names)|
      names.count do |name|
        #prevent dulicates of names mentioned more than once
        name_list.push(name) unless name_list.include?(name)
      end
      #return the list
      name_list
    end
    name_list
  end
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
