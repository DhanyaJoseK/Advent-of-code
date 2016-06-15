input = '1113222113'


50.times  { input = input.gsub(/(.)\1*/) {|i| i.size.to_s + i[0] } } #.gsub(/matched_sym/) {|sym| "-#{sym}-"}

puts input.length


#sub size of digit and digit itself in place of regular expression