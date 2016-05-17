require 'yahoo-finance'


class StockQuote

    def self.get_stock_quote(symbol)
        client = YahooFinance::Client.new
        data = client.quotes([symbol], [:open])
        data[0].open
        
    end
    
    def self.write_price_by_symbol(symbol, price)
        filename = "#{symbol}.csv"
        todays_date = Time.now.strftime('%Y-%m-%d')
        stock_title = "Todays Stock of #{symbol}"
        File.open(filename, "a") do |f|
        
            f << "#{stock_title}\n #{todays_date}, #{price},\n"
        end
    end
end


