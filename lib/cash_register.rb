
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
    if @discount 
      self.total = self.total - self.total*self.discount/100 
      return "After the discount, the total comes to $#{self.total}."
    else 
      phrase =  "There is no discount to apply."
    end 
    return phrase
  end
  
  def item
  return self.items
  end 
  
  def void_last_transaction
    quantity = self.transaction[2]
    quantity.times do
      self.purchases.pop
      self.total -= self.transaction[1]
    end 
  end 
end 