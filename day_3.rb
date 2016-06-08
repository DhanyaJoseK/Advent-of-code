
input = File.read('input.txt')

dir = input.split("")

pos = [0, 0]
h = [pos.dup]

def change_position(dir, pos, h)
  case dir
  when ">"
    pos[0] += 1
  when "<"
    pos[0] -= 1
  when "^"
    pos[1] += 1
  when "v"
    pos[1] -= 1
  end
  
  h << pos.dup
  pos
end

dir.each.with_index do |d, i|
  pos = change_position(d, pos, h)
end

puts  h.uniq .count.to_s