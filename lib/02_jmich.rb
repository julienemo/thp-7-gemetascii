def day_trader(price_list)
  # data validation : in only one day, can't do the job
  if price_list == price_list.sort.reverse
    return "No interesting case"
  else
  # basic settings
    days = price_list.length
    day_result = {}
    buy_day = 0

    # for every day, try buying
    # and try selling every date
    # starting from the next day to the sbuy day
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
end
