require 'digest'

def s(input)

  number = 0

  while true
    digest = Digest::MD5.hexdigest("#{input}#{number}")
    break if digest.start_with?("0" * 6)
    number += 1
  end

  puts number
end

s('yzbqklnj')

