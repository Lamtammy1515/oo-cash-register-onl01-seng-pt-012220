
class CashRegister 
  attr_accessor :total, :discount, :items, :transaction
 
  def initialize(discount = 0)
    self.items = []
    self.total = 0
    self.discount = discount
  end 
  
  def total
    self.total
  end 
  
  def add_item(item, price, quantity = 1)
   @transaction = [name, price, quantity]
   quantity.times do 
     self.items.push self.transaction[0]
     self.total += self.transaction[1]
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