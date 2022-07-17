def stock_picker (daily_price_array)
    profit = -1000000
    max_profit_location = []
    daily_price_array.each_with_index do |price, i|
        j = i + 1
        while j <= daily_price_array.length - 1 do
            current_profit = daily_price_array[j] - price
            if profit < current_profit
                profit = current_profit
                max_profit_location = [i, j]
            end
            j += 1
        end
    end
    max_profit_location
end
p stock_picker([17,3,6,9,15,8,6,1,10])