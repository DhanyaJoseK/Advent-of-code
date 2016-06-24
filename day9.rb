
sample_distances={
  ["Tristram" , "AlphaCentauri"].sort => 34,
["Tristram" , "Snowdin"].sort => 100,
["Tristram" , "Tambi"].sort => 63,
["Tristram" , "Faerun"].sort => 108,
["Tristram" , "Norrath"].sort => 111,
["Tristram" , "Straylight"].sort => 89,
["Tristram" , "Arbre"].sort => 132,
["AlphaCentauri" , "Snowdin"].sort => 4,
["AlphaCentauri" , "Tambi"].sort => 79,
["AlphaCentauri" , "Faerun"].sort => 44,
["AlphaCentauri" , "Norrath"].sort => 147,
["AlphaCentauri" , "Straylight"].sort => 133,
["AlphaCentauri" , "Arbre"].sort => 74,
["Snowdin" , "Tambi"].sort => 105,
["Snowdin" , "Faerun"].sort => 95,
["Snowdin" , "Norrath"].sort => 48,
["Snowdin" , "Straylight"].sort => 88,
["Snowdin" , "Arbre"].sort => 7,
["Tambi" , "Faerun"].sort => 68,
["Tambi" , "Norrath"].sort => 134,
["Tambi" , "Straylight"].sort => 107,
["Tambi" , "Arbre"].sort => 40,
["Faerun" , "Norrath"].sort => 11,
["Faerun" , "Straylight"].sort => 66,
["Faerun" , "Arbre"].sort => 144,
["Norrath" , "Straylight"].sort => 115,
["Norrath" , "Arbre"].sort => 135,
["Straylight" , "Arbre"].sort => 127,
}

def length_of_shortest_path(distances)

  all_paths = generate_paths(extract_cities(distances))
   all_paths.map { |path| length_of(path, distances) }
    .min
end

def extract_cities(distances)
  distances.keys.flatten.uniq
end

def generate_paths(cities)
  cities.permutation
end

def length_of(path, distances)
  path.each_cons(2).map { |pair| distances[pair.sort] }
    .reduce (:+)
end

puts length_of_shortest_path(sample_distances)