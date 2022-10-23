class CashRegister
    attr_accessor :discount, :total, :things, :last_transaction
    def initialize(discount = 0, total = 0, things = [], last_transaction = 0 )
        @discount = discount
        @total = total
        @things = things
        @last_transaction = @last_transaction
    end

    def add_item(title, price, quantity = 1)

        if quantity == 1 
            @total = total + price
            self.things.push(title)
            @last_transaction = price
        elsif quantity > 1
            @total = total + (price * quantity)
            @last_transaction = (price * quantity)
            while quantity > 0
                self.things.push(title)
                quantity = quantity - 1
            end
        end
    end

    def apply_discount 
        if self.discount > 0 
            updated_total = self.total - (self.total * 0.2)
            self.total = updated_total
            "After the discount, the total comes to $#{updated_total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        self.things
    end

    def void_last_transaction
        @total = total - last_transaction 
    end
end















