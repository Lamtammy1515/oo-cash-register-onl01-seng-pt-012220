
class CashRegister 
  attr_accessor :total, :discount, :items, :transaction
 
  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end 
  
  def total
    @total
  end 
  
  def add_item(item, price, quantity = 1)
   @transaction = [name, price, quantity]
   quantity.times do 
     @items.push self.transaction[0]
     @total += self.transaction[1]
   end 
  end
  
  def apply_discount
    if @discount > 0 
    @employee = (price * @discount)/100
    @total -= @employee
      return "After the discount, the total comes to $#{total}."
    else 
      return "There is no discount to apply."
    end 
  end
  
  def item
  return @items
  end 
  
  def void_last_transaction
    @total -= @price
    end 
end 