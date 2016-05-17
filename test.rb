module Destructable
    def destroy(anyobject)
        puts "i will destroy you"
    end
    
end


class User
    include Destructable
    
    attr_accessor :name, :email
    
    
    def initialize(name, email)
        @name = name
        @email = email
    end
    
    def run
        puts "hey i am running"
    end
    
    
    def self.identify
        puts "i am class method"
    end
    
end

class Buyer < User
    
    
end


class Seller < User
    
end

class Admin < User
    
    
end


buyer = Buyer.new("buyer","buyer@buyer.com")
puts "My name is #{buyer.name} and email is #{buyer.email}" 

seller = Seller.new("seller","seller@seller.com")
puts seller.name

user = User.new("hashmat", "hashmat00@aol.com")

puts user.destroy("myname")

puts Buyer.ancestors

User.identify