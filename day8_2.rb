data = File.readlines("input.txt")
code = 0
count = 0

data.each do |c|
  c = c.chomp 
  code += c.length
  count += c.dump.length #Produces a version of str with all nonprinting characters replaced by \nnn notation and all special characters escaped.
end

p count - code