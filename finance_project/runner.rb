# require_relative 'stock_quote'


# def stock_price_selector(*symbol_array)
#   symbol_array.each do |symbol|
#       stock_price = StockQuote.get_stock_quote(symbol)
#       stock_written = StockQuote.write_price_by_symbol(symbol, stock_price)
#   end
   
# end

# stock_price_selector('AAPL', 'GOOG', 'TWTR', 'FB')


require_relative 'historical.rb'


   puts  HistoricalStockQuote.historical_quotes('TWTR')
  HistoricalStockQuote.write_price_by_symbol('TWTR')