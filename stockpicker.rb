def stock_picker(stock)
    best_day = [0,0]
    profit = 0
    
    stock.each_with_index do |price_to_buy,day_to_buy|
      stock.each_with_index do |price_to_sell,day_to_sell|
        if day_to_sell > day_to_buy
         if (price_to_sell - price_to_buy) > profit
        profit = price_to_sell - price_to_buy
        best_day[0] = day_to_buy
        best_day[1] = day_to_sell
          end
        end
    
      end
    end
    best_day
    end
    stock = [17,3,6,9,15,8,6,1,10]
    # before buy( day to buy need to be before day to sell), and last sell
    
    p stock_picker(stock)