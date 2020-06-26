class CashRegister 
  attr_accessor :total, :discount, :items, :last_transaction 
  
  def initialize(discount = 0)  
    @total = 0
    @discount = discount
    @items = []
  end 
  
  
  
  def add_item(title, price, quantity)
    self.total += price * quantity
    @items << title
    
  end 
  
  
  
  def apply_discount
    "There is no discount to apply."
  end 
  
  
  
  def void_last_transaction 
    self.total = self.total - self.last_transaction 
  end 
  
  
  
  
end 

