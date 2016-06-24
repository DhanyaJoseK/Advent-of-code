data = File.readlines("input.txt")
code = 0
count = 0

data.each do |c|
  c = c.chomp 
  code += c.length
  count += eval(c).length #Evaluates the Ruby expression(s) in string, in the binding’s context.
end

p code - count
