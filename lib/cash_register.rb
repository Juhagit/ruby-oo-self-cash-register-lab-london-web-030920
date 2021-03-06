
require 'pry'
class CashRegister
attr_accessor :total, :discount, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items_array = []
    # binding.pry
    end
    
    def add_item(title, price, quantity = 1)
    items = {
        title: title,
        price: price,
        quantity: quantity
    }
    @items_array << items
    
    
         if quantity <= 1
        self.total += price
     else
        self.total += price * quantity
     end 
    end

def apply_discount
if discount > 0
    @total = @total -= @total * @discount / 100
# @total 
"After the discount, the total comes to $#{@total}."
else 
    "There is no discount to apply."  
end 
end 

def items
    
    @items_array.map {|items| names = []
    items[:quantity].times do 
        names << items[:title]
    end 
    names}.flatten

   


end

def void_last_transaction
    @total -= @items_array.last[:price] * @items_array.last[:quantity]
    @items_array.pop

end 
end 
