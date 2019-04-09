def day_trader(price_list)
  # basic settings
  days = price_list.length
  day_result = {}
  buy_day = 0

  # for every day, try buying
  # and try selling every date
  # starting from the next day to the buy day
  # put the day-pair and result into a hash
  while buy_day < days do
    sell_day = buy_day + 1
    while (sell_day > buy_day) && (sell_day < days) do
      result = (price_list[sell_day]) - (price_list[buy_day])
      day_result[[buy_day,sell_day]] = result
      sell_day += 1
    end
    buy_day += 1
  end
# something I found on google
# dunno what is really means...but to learn by heart
best = day_result.max_by{|k,v| v}
# would very much like to know how to print an array as array though
return "ACH-J#{best[0][0]}, VTE-J#{best[0][1]}"
end

puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
