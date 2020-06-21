
# ruby implementation of a map or dictionary

states = {

    "Pennsylvania" => "PA",
    "New York" => "NY",
    "Oregon" => "OR",
    :Massachusetts => "MA",
    1 => "bla"
}


puts states
puts states["New York"]
puts states["Oregon"]
puts states[:Massachusetts]
puts states[1]