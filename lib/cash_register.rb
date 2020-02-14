
class CashRegister 
  attr_accessor :total, :discount, :items, :price
 
  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end 
  
  def total
    @total
  end 
  
  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
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