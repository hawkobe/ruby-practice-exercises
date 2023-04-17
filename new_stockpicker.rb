def stock_picker(prices)
  greatest_difference = 0
  best_days_for_profit = []

  prices.each_with_index do |price, index|
    prices.each_with_index do |comparative_price, comparative_index|
      if index < comparative_index && (greatest_difference < comparative_price - price)
        greatest_difference = comparative_price - price
        best_days_for_profit = [index, comparative_index]
      end
    end
  end
  best_days_for_profit
end

stock_prices = [300, 3, 200, 295, 18, 8, 6, 5, 4]

p stock_picker(stock_prices)
