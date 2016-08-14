require_relative 'receipt1'

class Item

  attr_reader :name
  attr_reader :price



  @@total_value = 0
  @@sales_tax_value = 0

  def self.total_value
    @@total_value
  end

  def self.sales_tax_value
    @@sales_tax_value
  end

#quantity

  def initialize (name,price,category,imported)
  # @quantity =+ 1
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
    @@total_value += @price

  elsif (@imported == false) && (@category == "other")
    @@sales_tax_value = @price * 0.10
    @@total_value += @price * 1.10


  elsif (@imported == true) && (@category == "food" || @category == "medical" || @category == "book")
       @@sales_tax_value = @price * 0.05
      @@total_value += @price * 1.05


  elsif (@imported == true) && (@category == "other")
        @@sales_tax_value = @price * 0.10 * 0.05
        @@total_value += @price * 1.10 * 1.05
  end

 end



end



item1= Item.new("Harry Potter", 10, "book",false)
item2 = Item.new("Banana", 3, "food",false)
item3 = Item.new("imported table", 11,"other",true)

list_of_total_items = {
  item1.name => item1.tax,
  item2.name => item2.tax,
  item3.name => item3.tax
}


receipt1 = Receipt.new(list_of_total_items)

receipt1.print_receipt

puts "Sales Tax: $#{ Item.sales_tax_value}"
puts "Total Bill: $#{ Item.total_value}"
