require_relative 'receipt1'

class Item

  attr_reader :name
  attr_reader :price
  attr_reader :quantity



  @@total_value = 0
  @@sales_tax_value = 0

  def self.total_value
    @@total_value
  end

  def self.sales_tax_value
    @@sales_tax_value
  end

#quantity

  def initialize (quantity,name,price,category,imported)
  @quantity = quantity
  @name = name
  @price = price
  @category = category
  @imported = imported



    # if name.split.include?("imported")
    # @imported = true
    # else
    # @imported = false
    # end

  end


  def tax

  if (@imported == false) && (@category == "food" || @category == "medical" || @category == "book")
    #  @@sales_tax_value = 0
    @@total_value += (@price * @quantity)
    @price * @quantity

  elsif (@imported == false) && (@category == "other")
    @@sales_tax_value += (@price * 0.10 * @quantity)
    @@total_value += (@price * 1.10 * @quantity)
    @price * 1.10 * @quantity


  elsif (@imported == true) && (@category == "food" || @category == "medical" || @category == "book")
       @@sales_tax_value += (@price * 0.05 * @quantity)
      @@total_value += (@price * 1.05 * @quantity)
      @price * 1.05 * @quantity


  elsif (@imported == true) && (@category == "other")
        @@sales_tax_value += (@price * 0.10 * 0.05 * @quantity)
        @@total_value += (@price * 1.10 * 1.05 * @quantity)
        @price * 1.10 * 1.05 * @quantity
  end

 end



end



item1= Item.new(1,"Harry Potter", 10.00 , "book",false)
item2 = Item.new(2,"Banana", 3.45, "food",false)
item3 = Item.new(3,"imported table", 11.11,"other",true)

list_items = {
  item1.quantity => [item1.name, item1.tax],
  item2.quantity => [item2.name,item2.tax],
  item3.quantity => [item3.name, item3.tax]

}




receipt1 = Receipt.new(list_items)

receipt1.print_receipt

puts "Taxes: $#{Item.sales_tax_value}"
puts "Total: $#{Item.total_value}"
