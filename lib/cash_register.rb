class CashRegister
  
  attr_accessor :total, :discount, :price, :transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @price = price
    @total += price * quantity
    counter = quantity
    until counter == 0 do
      @items << title
      counter -= 1
    end
    self.transaction = price * quantity
  end
  
  def items
    @items
  end
  
  def apply_discount
      if @discount != 0
      @total = total - (price * discount)/100
      "After the discount, the total comes to $#{@total}."
      else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total -= self.transaction
  end
end
