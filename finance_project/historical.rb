require 'yahoo-finance'

class HistoricalStockQuote
    
        def self.historical_quotes(symbol)
        client = YahooFinance::Client.new
        data =  client.historical_quotes(symbol, {start_date: Time::now-(24*60*60*365), end_date: Time::now})
            data.map do |x|
                [x.trade_date, x.open]
            end
        end
        
        
        def self.write_price_by_symbol(symbol)
            quotes = historical_quotes(symbol)
                filename = "#{symbol}.csv"
                CSV.open(filename, "w") do |file|
                    quotes.each do |quote|
                        file << quote
                    end
                end
            end
            
end  

