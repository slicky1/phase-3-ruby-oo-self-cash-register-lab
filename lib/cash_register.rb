class CashRegister

    attr_accessor :title, :price, :total, :discount
    attr_accessor :items, :previous_total
    
    def initialize(discount=0)
      @discount = discount
      @total = 0
      @items = []
    end
    
    def add_item(title, price, quantity=1)
      quantity.times do 
        @items << title 
      end
      cost = price * quantity
      @total += cost
      @previous_total = cost
    end
    
    def apply_discount
      @total = ((100.0 - @discount)/100) * @total
      @discount == 0 ? "There is no discount to apply." : 
        "After the discount, the total comes to $#{@total.to_i}."
    end
    
    def void_last_transaction
      self.total = self.total - self.previous_total
    end
    
    
    end
