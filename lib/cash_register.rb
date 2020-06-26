class CashRegister 
  attr_accessor :total, :discount, :items, :last_transaction 
  
  def initialize(discount = 0)  
    @total = 0
    @discount = discount
    @items = []
  end 
  
  
  
  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times do
    @items << title
    end 
  end 
  
  
  
  def apply_discount
    
    if self.discount > 0  
      self.total = self.total - (self.total * (self.discount / 100.0)).to_i
      "After the discount, the total comes to $#{self.total}."
    else 
      "There is no discount to apply."
    end 
  end 
  
  
  def void_last_transaction 
    
    if self.items == 0 
      self.total = 0.0   
    else 
      self.total = self.total - self.last_transaction 
    end   
  end 
  
  
  
  
end 

