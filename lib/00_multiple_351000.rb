def sum_mul_3_or_5_to_1000(number)
  result = 0
  n = number.to_i
  # data validation
  # no string (which will return 0) but takes 0
  # nor negative nor float
  #
  if number == 0
    result = 0
  elsif (n!=number)||(n < 0)
    result ="Yo ! Je ne prends que les entiers naturels. TG"
  else
  # when the number is eligible
    i = 1
    while i <= n
  # if it is a multifle of 3 or 5
      if (i % 3 == 0) || (i % 5 == 0)
  # culmulate the sum
        result += i
        i += 1
      else
        result = result
        i += 1
      end
    end
  end
  return result
end
