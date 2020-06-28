class CashRegister
  
<<<<<<< HEAD
  attr_accessor :total, :discount, :price, :transaction
=======
  attr_accessor :total, :discount, :price
>>>>>>> e56f3153cd1df6029221a39d8a9d46cb3aa6576c
  
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
<<<<<<< HEAD
    self.transaction = price * quantity
=======
>>>>>>> e56f3153cd1df6029221a39d8a9d46cb3aa6576c
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
  
<<<<<<< HEAD
  def void_last_transaction
    self.total -= self.transaction
=======
  def void_last_transacation
    @total = @total.pop
>>>>>>> e56f3153cd1df6029221a39d8a9d46cb3aa6576c
  end
end
