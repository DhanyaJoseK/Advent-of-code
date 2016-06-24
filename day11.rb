data = 'hepxcrrq'

until false do
  if data !~ /i|o|l/
    if data =~ /abc|bcd|cde|def|efg|fgh|pqr|qrs|rst|stu|tuv|uvw|vwx|wxy|xyz/
      if data =~ /(aa|bb|cc|dd|ee|ff|gg|hh|jj|kk|mm|nn|pp|qq|rr|ss|tt|uu|vv|ww|xx|yy|zz).*(aa|bb|cc|dd|ee|ff|gg|hh|jj|kk|mm|nn|pp|qq|rr|ss|tt|uu|vv|ww|xx|yy|zz)/
        p data
        break
      end
    end
  end
  data = data.next  #part2- .next
end