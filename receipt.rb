require_relative 'item1'
# require_relative 'cash_register'

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


# def subtotal
#   @price
# end
#
# def taxes
#   sales_tax + imported_item
# end
#
# def total
#
#   @price + sales_tax + imported_item
# end
# end
#
#
#  puts  "this item is a(n) #{name}, the total price is  #{total} and
#   its kind is #{category} and the taxes are #{taxes} and the subtotal
#    without classes is #{subtotal}"
