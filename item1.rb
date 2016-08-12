#require_relative 'receipt'
# require_relative 'cash_register'

class Item

  attr_reader :name
  attr_accessor :price



 def initialize (name,category,price,quantity)
  @name = name
  @category = category
  @price = price
  @quantity = quantity
  @imported_item = 0
  @sales_tax = 0
  if name.split.include?("imported")
  @imported = true
  else
  @imported = false
  end

  end


def sales_tax

  if @imported == false && (@category == "fruit" || @category == "medical" || @category == "book")
     @price
  elsif @imported == true && @category == "other"
    @sales_tax = @price * 0.10
  elsif @imported == true && (@category == "fruit" || @category == "medical" || @category == "book")
       @sales_tax = @price * 0.05
  elsif @imported == false && @category == "other"
        @sales_tax = @price * 0.10 * 0.05
  end

  return [@sales_tax, @price, @quantity, @name]


end

end

class Receipt

attr_accessor :total
  def initialize(*items)
    @items = items
end

def print_receipt
  @items.each do |item|
    puts item
  end
end
end



item1= Item.new("book", "book", 12.49, 1)
item1_info = item1.sales_tax

receipt1 = Receipt.new(item1_info)
receipt1.print_receipt
