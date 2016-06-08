
input = File.read('input.txt')

dir= input.split("")

s_pos = [0, 0]
r_pos = [0, 0]
h = []

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

  if i.even?
    s_pos = change_position(d, s_pos, h)
  else
    r_pos = change_position(d, r_pos, h)
  end
end

puts  h.uniq .count