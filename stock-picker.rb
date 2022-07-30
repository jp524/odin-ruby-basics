def stock_picker(prices)
  max = 0
  index_max = 0
  index_min = 0
  prices.each_with_index do |price, i|
    if i != 0
      if price > max
        max = price
        index_max = i
      end
    end
  end
  min = max
  prices.each_with_index do |price, i|
    if i < index_max - 1
      if price < min
        min = price
        index_min = i
      end
    end
  end
  p [index_min, index_max]
end

stock_picker([17,3,6,9,15,8,6,1,10])